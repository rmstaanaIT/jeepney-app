// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en_US locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// ignore_for_file: unnecessary_brace_in_string_interps

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

// ignore: unnecessary_new
final messages = new MessageLookup();

// ignore: unused_element
final _keepAnalysisHappy = Intl.defaultLocale;

// ignore: non_constant_identifier_names
typedef MessageIfAbsent(String message_str, List args);

class MessageLookup extends MessageLookupByLibrary {
  get localeName => 'en_US';

  static m0(value) => "${value} km";

  static m1(value) => "${value} m";

  static m2(value) => "${value} min";

  static m12(distance) => "${distance}";

  static m13(value, distance) => "${value} ${distance}";

  static m3(value) => " ₱ ${value}";

  static m4(vehicle, duration, distance, location) => "Ride ${vehicle} for ${duration} (${distance}) to\n${location}";

  static m5(duration, distance, location) => "Walk ${duration} (${distance}) to\n${location}";

  static m6(url) => "Download Jeepney App, the public transport app for Valenzuela City, at ${url}";

  static m7(representatives) => "Representatives: ${representatives}";

  static m8(routeContributors, osmContributors) => "Routes: ${routeContributors} and all users that uploaded routes to OpenStreetMap, such as ${osmContributors}.\nContact us if you want to join the OpenStreetMap community!";

  static m9(teamMembers) => "Team: ${teamMembers}";

  static m10(translators) => "Translations: ${translators}";

  static m14(value) => "${value}";

  static m11(version) => "Version ${version}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    " " : MessageLookupByLibrary.simpleMessage(" "),
    "aboutContent" : MessageLookupByLibrary.simpleMessage("We have developed this app to make it easy for people to use the transport system in Valenzuela City and the surrounding area."),
    "aboutLicenses" : MessageLookupByLibrary.simpleMessage("Licenses"),
    "alertLocationServicesDeniedMessage" : MessageLookupByLibrary.simpleMessage("Please make sure your device has GPS and the Location settings are activated."),
    "alertLocationServicesDeniedTitle" : MessageLookupByLibrary.simpleMessage("No location"),
    "appReviewDialogButtonAccept" : MessageLookupByLibrary.simpleMessage("Write review"),
    "appReviewDialogButtonDecline" : MessageLookupByLibrary.simpleMessage("Not now"),
    "appReviewDialogContent" : MessageLookupByLibrary.simpleMessage("Support us with a review on the Google Play Store."),
    "appReviewDialogTitle" : MessageLookupByLibrary.simpleMessage("Enjoying Trufi?"),
    "chooseLocationPageSubtitle" : MessageLookupByLibrary.simpleMessage("Pan & zoom map under pin"),
    "chooseLocationPageTitle" : MessageLookupByLibrary.simpleMessage("Choose a point"),
    "commonCancel" : MessageLookupByLibrary.simpleMessage("Cancel"),
    "commonDestination" : MessageLookupByLibrary.simpleMessage("Destination"),
    "commonError" : MessageLookupByLibrary.simpleMessage("Error"),
    "commonFailLoading" : MessageLookupByLibrary.simpleMessage("Failed to load data"),
    "commonGoOffline" : MessageLookupByLibrary.simpleMessage("Go offline"),
    "commonGoOnline" : MessageLookupByLibrary.simpleMessage("Go online"),
    "commonNoInternet" : MessageLookupByLibrary.simpleMessage("No internet connection."),
    "commonOK" : MessageLookupByLibrary.simpleMessage("OK"),
    "commonOrigin" : MessageLookupByLibrary.simpleMessage("Origin"),
    "commonUnknownError" : MessageLookupByLibrary.simpleMessage("Unknown error"),
    "description" : MessageLookupByLibrary.simpleMessage("The best way to travel with jeepneys through Valenzuela City."),
    "donate" : MessageLookupByLibrary.simpleMessage("Donate"),
    "errorAmbiguousDestination" : MessageLookupByLibrary.simpleMessage("The trip planner is unsure of the location you want to go to. Please select from the following options, or be more specific."),
    "errorAmbiguousOrigin" : MessageLookupByLibrary.simpleMessage("The trip planner is unsure of the location you want to start from. Please select from the following options, or be more specific."),
    "errorAmbiguousOriginDestination" : MessageLookupByLibrary.simpleMessage("Both origin and destination are ambiguous. Please select from the following options, or be more specific."),
    "errorNoBarrierFree" : MessageLookupByLibrary.simpleMessage("Both origin and destination are not wheelchair accessible"),
    "errorNoTransitTimes" : MessageLookupByLibrary.simpleMessage("No transit times available. The date may be past or too far in the future or there may not be transit service for your trip at the time you chose."),
    "errorOutOfBoundary" : MessageLookupByLibrary.simpleMessage("Trip is not possible. You might be trying to plan a trip outside the map data boundary."),
    "errorPathNotFound" : MessageLookupByLibrary.simpleMessage("Trip is not possible. Your start or end point might not be safely accessible (for instance, you might be starting on a residential street connected only to a highway)."),
    "errorServerCanNotHandleRequest" : MessageLookupByLibrary.simpleMessage("The request has errors that the server is not willing or able to process."),
    "errorServerTimeout" : MessageLookupByLibrary.simpleMessage("The trip planner is taking way too long to process your request. Please try again later."),
    "errorServerUnavailable" : MessageLookupByLibrary.simpleMessage("We\'re sorry. The trip planner is temporarily unavailable. Please try again later."),
    "errorTrivialDistance" : MessageLookupByLibrary.simpleMessage("Origin is within a trivial distance of the destination."),
    "errorUnknownDestination" : MessageLookupByLibrary.simpleMessage("Destination is unknown. Can you be a bit more descriptive?"),
    "errorUnknownOrigin" : MessageLookupByLibrary.simpleMessage("Origin is unknown. Can you be a bit more descriptive?"),
    "errorUnknownOriginDestination" : MessageLookupByLibrary.simpleMessage("Both origin and destination are unknown. Can you be a bit more descriptive?"),
    "fare1" : MessageLookupByLibrary.simpleMessage("For the first 4kms minimum fare is 9 PHP succeeding fare 1.50 PhP per km. Base fare or minimum fare is 9 PHP applicable to all routes in NCR, Reg 3 and Reg 4."),
    "fare2" : MessageLookupByLibrary.simpleMessage("Discount for PWD, Senior Citizen, Student"),
    "fare3" : MessageLookupByLibrary.simpleMessage("Fare"),
    "fare4" : MessageLookupByLibrary.simpleMessage("Students can avail of the twenty percent (20% discount from Monday to Sunday including summer breaks, legal and special legal holidays. Post-graduate students (those taking up medicine, law, masteral, doctoral degrees and the like) cannot avail of the said fare discount."),
    "fare5" : MessageLookupByLibrary.simpleMessage("Students, persons with disabilities, and senior citizens are entitled to a 20 percent discount on fares everyday upon presentation of their identification cards."),
    "feedbackContent" : MessageLookupByLibrary.simpleMessage("The Land Transportation Franchising and Regulatory Board (LTFRB) has put up a complaint center around the clock. Aside from responding to complaints and grievances, the contact centers will respond to inquiries about any services rendered by the LTFRB."),
    "feedbackContent1" : MessageLookupByLibrary.simpleMessage("If you encounter violations involving drivers of public utility jeepneys, condition and state of public vehicle units and other public land transportation-related complaints you can report it via email and LTFRB Facebook where complainants send pictures and videos for evidence, and their 24/7 hotline number - 1342."),
    "feedbackContent2" : MessageLookupByLibrary.simpleMessage("In filing a complaint, the LTFRB will ask the person who reported to the hotline if they are willing to attend a hearing. If they are, the LTFRB will send the complaint to their Legal Division for scheduling and issuance of summons to both complainant and respondent. For complainants who do not want to attend a hearing, the LTFRB will send a Show Cause Order (SCO) or reprimand letter signed by the Chairman. The LTFRB will ask the respondent to reason out and explain why the driver or the operator should not be sanctioned for the reported violation. A response from the driver or operator must be received within 5 days from receipt of the SCO. The complainant will also receive a copy of the SCO and the response letter of the respondent. Sending of summons, SCOs, and reprimand letters are coursed through PhilPost."),
    "feedbackTitle" : MessageLookupByLibrary.simpleMessage("File a Complaint"),
    "followOnFacebook" : MessageLookupByLibrary.simpleMessage("Follow us on Facebook"),
    "followOnInstagram" : MessageLookupByLibrary.simpleMessage("Follow us on Instagram"),
    "followOnTwitter" : MessageLookupByLibrary.simpleMessage("Follow us on Twitter"),
    "instructionDistanceKm" : m0,
    "instructionDistanceMeters" : m1,
    "instructionDurationMinutes" : m2,
    "instructionFare" : m12,
    "instructionFare2" : m13,
    "instructionFarePeso" : m3,
    "instructionRide" : m4,
    "instructionVehicleBus" : MessageLookupByLibrary.simpleMessage("Jeepney"),
    "instructionVehicleCar" : MessageLookupByLibrary.simpleMessage("Car"),
    "instructionVehicleGondola" : MessageLookupByLibrary.simpleMessage("Gondola"),
    "instructionVehicleMicro" : MessageLookupByLibrary.simpleMessage("Micro"),
    "instructionVehicleMinibus" : MessageLookupByLibrary.simpleMessage("Minibus"),
    "instructionVehicleTrufi" : MessageLookupByLibrary.simpleMessage("Trufi"),
    "instructionWalk" : m5,
    "menuAbout" : MessageLookupByLibrary.simpleMessage("About"),
    "menuAppReview" : MessageLookupByLibrary.simpleMessage("Rate the app"),
    "menuConnections" : MessageLookupByLibrary.simpleMessage("Show routes"),
    "menuFeedback" : MessageLookupByLibrary.simpleMessage("Report to LTFRB"),
    "menuOnline" : MessageLookupByLibrary.simpleMessage("Regular"),
    "menuShareApp" : MessageLookupByLibrary.simpleMessage("Share the app"),
    "menuTeam" : MessageLookupByLibrary.simpleMessage("Settings"),
    "noRouteError" : MessageLookupByLibrary.simpleMessage("Sorry, we could not find a route. What do you want to do?"),
    "noRouteErrorActionCancel" : MessageLookupByLibrary.simpleMessage("Try another destination"),
    "noRouteErrorActionReportMissingRoute" : MessageLookupByLibrary.simpleMessage("Report a missing route"),
    "noRouteErrorActionShowCarRoute" : MessageLookupByLibrary.simpleMessage("Show route by car"),
    "onlineData" : MessageLookupByLibrary.simpleMessage("Jeepney"),
    "readOurBlog" : MessageLookupByLibrary.simpleMessage("Read our blog"),
    "searchFailLoadingPlan" : MessageLookupByLibrary.simpleMessage("Failed to load plan."),
    "searchHintDestination" : MessageLookupByLibrary.simpleMessage("Choose destination"),
    "searchHintOrigin" : MessageLookupByLibrary.simpleMessage("Choose starting point"),
    "searchItemChooseOnMap" : MessageLookupByLibrary.simpleMessage("Choose on map"),
    "searchItemNoResults" : MessageLookupByLibrary.simpleMessage("No results"),
    "searchItemYourLocation" : MessageLookupByLibrary.simpleMessage("Your location"),
    "searchMapMarker" : MessageLookupByLibrary.simpleMessage("Map Marker"),
    "searchPleaseSelectDestination" : MessageLookupByLibrary.simpleMessage("Select destination"),
    "searchPleaseSelectOrigin" : MessageLookupByLibrary.simpleMessage("Select origin"),
    "searchTitleFavorites" : MessageLookupByLibrary.simpleMessage("Favorites"),
    "searchTitlePlaces" : MessageLookupByLibrary.simpleMessage("Places"),
    "searchTitleRecent" : MessageLookupByLibrary.simpleMessage("Recent"),
    "searchTitleResults" : MessageLookupByLibrary.simpleMessage("Search Results"),
    "shareAppText" : m6,
    "tagline" : MessageLookupByLibrary.simpleMessage("A Jeepney Navigation for Commuters using Android App"),
    "teamContent" : MessageLookupByLibrary.simpleMessage("We are an international team called Trufi Association that has created this app with the help of many volunteers! Do you want to improve the Trufi App and be part of our team?"),
    "teamSectionRepresentatives" : m7,
    "teamSectionRoutes" : m8,
    "teamSectionTeam" : m9,
    "teamSectionTranslations" : m10,
    "title" : MessageLookupByLibrary.simpleMessage("Jeepney App"),
    "titlehaha" : m14,
    "version" : m11
  };
}
