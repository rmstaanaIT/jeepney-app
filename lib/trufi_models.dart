import 'dart:math';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:global_configuration/global_configuration.dart';
import 'package:latlong/latlong.dart';
import 'package:jeepney_app/pages/team.dart';
import 'package:jeepney_app/trufi_localizations.dart';
import 'package:jeepney_app/trufi_map_utils.dart';
import 'package:jeepney_app/pages/website.dart';
import 'package:jeepney_app/widgets/toggle_class.dart';
double oo;



class TrufiLocation {
  TrufiLocation({
    @required this.description,
    @required this.latitude,
    @required this.longitude,
    this.alternativeNames,
    this.localizedNames,
    this.address,
    this.type,
  })  : assert(description != null),
        assert(latitude != null),
        assert(longitude != null);

  static const String keyDescription = 'description';
  static const String keyLatitude = 'latitude';
  static const String keyLongitude = 'longitude';

  final String description;
  final double latitude;
  final double longitude;
  final List<String> alternativeNames;
  final Map<String, String> localizedNames;
  final String address;
  final String type;

  factory TrufiLocation.fromLatLng(String description, LatLng point) {
    return TrufiLocation(
      description: description,
      latitude: point.latitude,
      longitude: point.longitude,
    );
  }

  factory TrufiLocation.fromLocationsJson(Map<String, dynamic> json) {
    return TrufiLocation(
      description: json['name'],
      latitude: json['coords']['lat'],
      longitude: json['coords']['lng'],
    );
  }

  factory TrufiLocation.fromSearchPlacesJson(List<dynamic> json) {
    return TrufiLocation(
      description: json[0].toString(),
      alternativeNames: json[1].cast<String>(),
      localizedNames: json[2].cast<String, String>(),
      longitude: json[3][0].toDouble(),
      latitude: json[3][1].toDouble(),
      address: json[4],
      type: json[5],
    );
  }

  factory TrufiLocation.fromPlanLocation(PlanLocation value) {
    return TrufiLocation(
      description: value.name,
      latitude: value.latitude,
      longitude: value.longitude,
    );
  }

  factory TrufiLocation.fromSearch(Map<String, dynamic> json) {
    return TrufiLocation(
      description: json['description'],
      latitude: json['lat'],
      longitude: json['lng'],
    );
  }

  factory TrufiLocation.fromJson(Map<String, dynamic> json) {
    if (json == null) return null;
    return TrufiLocation(
      description: json[keyDescription],
      latitude: json[keyLatitude],
      longitude: json[keyLongitude],
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      keyDescription: description,
      keyLatitude: latitude,
      keyLongitude: longitude,
    };
  }

  bool operator ==(o) =>
      o is TrufiLocation &&
      o.description == description &&
      o.latitude == latitude &&
      o.longitude == longitude;

  int get hashCode =>
      description.hashCode ^ latitude.hashCode ^ longitude.hashCode;

  String toString() {
    return '$latitude,$longitude';
  }

  String get displayName {
    final abbreviations = new Map<String, String>
      .from(GlobalConfiguration().get("abbreviations"));
    return abbreviations.keys.fold<String>(description, (
      description,
      abbreviation,
    ) {
      return description.replaceAll(
        abbreviation,
        abbreviations[abbreviation],
      );
    });
  }
  String _distanceString1(TrufiLocalizations localizations) {
    return latitude.toString() + longitude.toString();
  }
}

class TrufiStreet {
  TrufiStreet({@required this.location});

  final TrufiLocation location;
  final junctions = List<TrufiStreetJunction>();

  factory TrufiStreet.fromSearchJson(List<dynamic> json) {
    return TrufiStreet(
      location: TrufiLocation(
        description: json[0],
        alternativeNames: json[1].cast<String>(),
        longitude: json[2][0].toDouble(),
        latitude: json[2][1].toDouble(),
      ),
    );
  }

  String get description => location.description;

  String get displayName => location.displayName;
}

class TrufiStreetJunction {
  TrufiStreetJunction({
    @required this.street1,
    @required this.street2,
    @required this.latitude,
    @required this.longitude,
  });

  final TrufiStreet street1;
  final TrufiStreet street2;
  final double latitude;
  final double longitude;

  String get description {
    return "${street1.location.description} and ${street2.location.description}";
  }

  TrufiLocation get location {
    return TrufiLocation(
      description: description,
      latitude: latitude,
      longitude: longitude,
    );
  }
}

class LevenshteinObject {
  LevenshteinObject(this.object, this.distance);

  final dynamic object;
  final int distance;
}

class Plan {


  Plan({
    this.from,
    this.to,
    this.itineraries,
    this.error,
  });

  static const _Error = "error";
  static const _Itineraries = "itineraries";
  static const _From = "from";
  static const _Plan = "plan";
  static const _To = "to";

  final PlanLocation from;
  final PlanLocation to;
  final List<PlanItinerary> itineraries;
  final PlanError error;

  factory Plan.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    if (json.containsKey(_Error)) {
      return Plan(error: PlanError.fromJson(json[_Error]));
    } else {
      Map<String, dynamic> planJson = json[_Plan];
      return Plan(
        from: PlanLocation.fromJson(planJson[_From]),
        to: PlanLocation.fromJson(planJson[_To]),
        itineraries: _removePlanItineraryDuplicates(
          planJson[_Itineraries]
              .map<PlanItinerary>(
                (itineraryJson) => PlanItinerary.fromJson(itineraryJson),
              )
              .toList(),
        ),
      );
    }
  }

  static List<PlanItinerary> _removePlanItineraryDuplicates(
    List<PlanItinerary> itineraries,
  ) {
    final usedRoutes = Set<String>();
    // Fold the itinerary list to build up list without duplicates
    return itineraries.fold<List<PlanItinerary>>(
      List<PlanItinerary>(),
      (itineraries, itinerary) {
        // Get first bus leg
        final firstBusLeg = itinerary.legs.firstWhere(
          (leg) => leg.mode == "BUS",
          orElse: () => null,
        );
        // If no bus leg exist just add the itinerary
        if (firstBusLeg == null) {
          itineraries.add(itinerary);
        } else {
          // If a bus leg exist and the first route isn't used yet just add the itinerary
          if (!usedRoutes.contains(firstBusLeg.route)) {
            itineraries.add(itinerary);
            usedRoutes.add(firstBusLeg.route);
          }
        }
        // Return current list
        return itineraries;
      },
    );
  }

  factory Plan.fromError(String error) {
    return Plan(error: PlanError.fromError(error));
  }

  Map<String, dynamic> toJson() {
    return error != null
        ? {_Error: error.toJson()}
        : {
            _Plan: {
              _From: from.toJson(),
              _To: to.toJson(),
              _Itineraries:
                  itineraries.map((itinerary) => itinerary.toJson()).toList()
            }
          };
  }

  bool get hasError => error != null;
}

class PlanError {
  PlanError(this.id, this.message);

  static const String _Id = "id";
  static const String _Message = "msg";

  final int id;
  final String message;

  factory PlanError.fromJson(Map<String, dynamic> json) {
    return PlanError(json[_Id], json[_Message]);
  }

  factory PlanError.fromError(String error) {
    return PlanError(-1, error);
  }

  Map<String, dynamic> toJson() {
    return {
      _Id: id,
      _Message: message,
    };
  }
}

class PlanLocation {
  PlanLocation({
    this.name,
    this.latitude,
    this.longitude,
  });

  static const String _Name = "name";
  static const String _Latitude = "lat";
  static const String _Longitude = "lon";

  final String name;
  final double latitude;
  final double longitude;

  factory PlanLocation.fromJson(Map<String, dynamic> json) {
    return PlanLocation(
      name: json[_Name],
      latitude: json[_Latitude],
      longitude: json[_Longitude],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      _Name: name,
      _Latitude: latitude,
      _Longitude: longitude,
    };
  }
}

class PlanItinerary {

  static const String _Legs = "legs";

  static int _distanceForLegs(List<PlanItineraryLeg> legs) =>
      legs.fold<int>(0, (distance, leg) =>   distance += leg.distance.ceil()  );

  static int _timeForLegs(List<PlanItineraryLeg> legs) => legs.fold<int>(
      0, (time, leg) => time += (leg.duration.ceil() / 60).ceil());





  PlanItinerary({
    this.legs,
  })  : this.distance = _distanceForLegs(legs),
        this.time = _timeForLegs(legs);


  final List<PlanItineraryLeg> legs;
  final int distance;
  final int time;


  factory PlanItinerary.fromJson(Map<String, dynamic> json) {
    return PlanItinerary(
        legs: json[_Legs].map<PlanItineraryLeg>((json) {
      return PlanItineraryLeg.fromJson(json);
    }).toList());
  }

  Map<String, dynamic> toJson() {
    return {_Legs: legs.map((itinerary) => itinerary.toJson()).toList()};
  }

  }


class PlanItineraryLeg {
  PlanItineraryLeg({
    this.points,
    this.mode,
    this.route,
    this.routeLongName,
    this.distance,
    this.duration,
    this.toName,
  });

  List<PointLatLng> decodePolyline;
  static const _Distance = "distance";
  static const _Duration = "duration";
  static const _LegGeometry = "legGeometry";
  static const _Points = "points";
  static const _Mode = "mode";
  static const _Name = "name";
  static const _Route = "route";
  static const _RouteLongName = "routeLongName";
  static const _To = "to";

  final String points;
  final String mode;
  final String route;
  final String routeLongName;
  final double distance;
  final double duration;
  final String toName;
  double fixedFare1 = 9.00;
  static double fixedFare;
  double nfixedFare = 28.00;
  double nfixedFare1 = 15.00;
  double fixedDiscountFare1 = 7.20;
  static double fixedDiscountFare ;
  double extraFare;
  double extraDiscountFare;
  double totalFare;
  static double regKm ;
  static double disKm ;
  double regKm1 = 1.50;
  double disKm1 = 1.20;


  NetworkUtil util = NetworkUtil();



  factory PlanItineraryLeg.fromJson(Map<String, dynamic> json) {
    return PlanItineraryLeg(
      points: json[_LegGeometry][_Points],
      mode: json[_Mode],
      route: json[_Route],
      routeLongName: json[_RouteLongName],
      distance: json[_Distance],
      duration: json[_Duration],
      toName: json[_To][_Name],
    );
  }

  String toInstruction(TrufiLocalizations localizations) {
    StringBuffer sb = StringBuffer();
    if (mode == 'WALK') {
      sb.write(
        localizations.instructionWalk(
          _durationString(localizations),
          _distanceString(localizations),
          _toString(localizations)
        )
      );
    } else {
      sb.write(
        localizations.instructionRide(
          (route.isNotEmpty ? "$route " : "") + _carTypeString(localizations) ,
          _durationString(localizations),
          _distanceString(localizations),
          _toString(localizations)
        )
      );
    }
    return sb.toString();
  }

  String toInstructionFare(TrufiLocalizations localizations) {
    StringBuffer sb = StringBuffer();
   // bool isOK =  route.toString().contains("Malinta") == true;
    if (mode == 'WALK')
    { sb.clear();
    }
    else {
      sb.write(

          localizations.instructionFare(

             /*   route.toString().contains("Sto") &&
                route.toString().contains("Monumento") ||
                toName.toString().contains("NLEX") ||
                route.toString().contains("Expressway")

                ? _fareString1(localizations)

                  :  route.toString().contains("Monumento") &&
                      route.toString().contains("NLEX") ||
                     toName.toString().contains("NLEX") ||
                     route.toString().contains("Expressway")

                  ? _fareString2(localizations)

                    :  route.toString().contains("Malinta") &&
                    route.toString().contains("Exit") &&
                    route.toString().contains("Monumento") ||
                    toName.toString().contains("NLEX") ||
                    route.toString().contains("Expressway")

                      ? _fareString2(localizations)

                        : */
                fareString(localizations)
            ,
          )
      );
    }
    return sb.toString();
  }

  Map<String, dynamic> toJson() {
    return {
      _LegGeometry: {_Points: points},
      _Mode: mode,
      _Route: route,
      _RouteLongName: routeLongName,
      _Distance: distance,
      _Duration: duration,
      _To: {_Name: toName}
    };
  }

  String _carTypeString(TrufiLocalizations localizations) {
    String carType = routeLongName?.toLowerCase() ?? "";
    return mode == 'CAR'
        ? localizations.instructionVehicleCar()
        : carType.contains('trufi')
            ? localizations.instructionVehicleTrufi()
            : carType.contains('micro')
                ? localizations.instructionVehicleMicro()
                : carType.contains('minibus')
                    ? localizations.instructionVehicleMinibus()
                    : carType.contains('gondola')
                        ? localizations.instructionVehicleGondola()
                        : localizations.instructionVehicleBus();
  }

  String _distanceString(TrufiLocalizations localizations) {
    return distance >= 1000
        ? localizations.instructionDistanceKm( distance.ceil()~/1000)
        : localizations.instructionDistanceMeters(distance.ceil());
  }

 /*String _distanceString1(TrufiLocalizations localizations) {

     return decodeEncodedPolyline(points).toString();

  }

  List<PointLatLng> decodeEncodedPolyline(String encoded) {
    List<PointLatLng> poly = [];
    int index = 0, len = encoded.length;
    int lat = 0, lng = 0;

    while (index < len) {
      int b, shift = 0, result = 0;
      do {
        b = encoded.codeUnitAt(index++) - 63;
        result |= (b & 0x1f) << shift;
        shift += 5;
      } while (b >= 0x20);
      int dlat = ((result & 1) != 0 ? ~(result >> 1) : (result >> 1));
      lat += dlat;

      shift = 0;
      result = 0;
      do {
        b = encoded.codeUnitAt(index++) - 63;
        result |= (b & 0x1f) << shift;
        shift += 5;
      } while (b >= 0x20);
      int dlng = ((result & 1) != 0 ? ~(result >> 1) : (result >> 1));
      lng += dlng;
      PointLatLng p =
      new PointLatLng((lat / 1E5).toDouble(), (lng / 1E5).toDouble());
      poly.add(p);
    }
    return poly;
  }*/

  String _durationString(TrufiLocalizations localizations) {
    final value = (duration.ceil() / 60).ceil();
    return localizations.instructionDurationMinutes(value);
  }

  String fareString(TrufiLocalizations localizations) {
    var p1 = PlanItineraryLeg ();
    var p2 = ToggleClass.isOnn ?  discountTotalFare(distance ~/ 1000) : regularTotalFare(distance ~/ 1000);
    //final value = p2;

    return localizations.instructionFarePeso(p2.toStringAsFixed(2)) ;
  }

/*  String _fareString1(TrufiLocalizations localizations) {
    

    var p2 = nfixedFare;
    return localizations.instructionFarePeso(p2.toStringAsFixed(2));
  }
  String _fareString2(TrufiLocalizations localizations) {

    var p2 = nfixedFare1;
    return localizations.instructionFarePeso(p2.toStringAsFixed(2));
  }*/


  double regularTotalFare(distance)
  {
    if(ToggleClass.oo  == null || ToggleClass.ii  == null ){
      fixedFare = fixedFare1;
      regKm = regKm1;
    }
    else {
       fixedFare = ToggleClass.oo;
       regKm = ToggleClass.ii;
    }
    this.extraFare = (regKm * (distance - 4));
    if (distance <= 4)  {
      totalFare = fixedFare;
    } else {
      if (distance > 4) {
        totalFare = (fixedFare + extraFare);
      } else {
        if ((distance == 0) || (distance < 0))  {
          totalFare = 0;
        }
      }
    }

    return totalFare ;
  }

/*
  double round_up(n){
    

    double tmp = (( n * 100).roundToDouble())/100;
    return tmp;
  }
*/

  double roundDouble(double value){
    int places = 2;
    double mod = pow(10.0, places);
    return ((value * mod).round().toDouble() / mod);
  }

  double discountTotalFare(distance)
  {
    if(ToggleClass.oo  == null || ToggleClass.ii  == null){
      fixedDiscountFare = fixedDiscountFare1;
      disKm = disKm1;
    }
    else {
      fixedDiscountFare = ToggleClass.oo;
      disKm = ToggleClass.ii;
    }
    this.extraDiscountFare = (disKm * (distance - 4));
    if (distance <= 4)  {
      totalFare = fixedDiscountFare;
    } else {
      if (distance > 4) {
        totalFare = (fixedDiscountFare + extraDiscountFare);
      } else {
        if ((distance == 0) || (distance < 0))  {
          totalFare = 0;
        }
      }
    }
    ToggleClass.oo  == null;
    ToggleClass.ii  == null;
    return totalFare;
  }



  double nlexTotalFare(distance)
  {

      totalFare = nfixedFare;

    return totalFare;
  }

  /*String _fareString(TrufiLocalizations localizations) {


        //First 1 km 50rs
      //After 1st km every 200 meter rs 8.80

      double fare = 0;

      if(distance.ceil() >= 1000){
        fare = 50;
        fare += distance.ceil() * 0.04;
        return localizations.instructionFare(fare);
      }
      else
        {
          fare = 50;
          fare += (distance.ceil() ~/ 1000) * 0.04;
          return localizations.instructionFare(fare);

        }
    }*/


  String _toString(TrufiLocalizations localizations) {
    return toName == 'Destination' ? localizations.commonDestination() : toName;
  }


  IconData iconData() {
    String carType = routeLongName?.toLowerCase() ?? "";
    return mode == 'WALK'
        ? Icons.directions_walk
        : mode == 'CAR'
            ? Icons.drive_eta
            : carType.contains('trufi')
                ? Icons.local_taxi
                : carType.contains('micro')
                    ? Icons.directions_bus
                    : carType.contains('minibus')
                        ? Icons.airport_shuttle
                        : carType.contains('gondola')
                            ? GondolaIcon.gondola
                            : Jeepney.jeepney;
  }

}
