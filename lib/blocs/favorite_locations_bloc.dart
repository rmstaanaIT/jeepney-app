import 'package:flutter/material.dart';

import 'package:jeepney_app/blocs/bloc_provider.dart';
import 'package:jeepney_app/blocs/locations_bloc_base.dart';
import 'package:jeepney_app/location/location_storage.dart';
import 'package:jeepney_app/trufi_models.dart';

class FavoriteLocationsBloc extends LocationsBlocBase {
  static FavoriteLocationsBloc of(BuildContext context) {
    return BlocProvider.of<FavoriteLocationsBloc>(context);
  }

  FavoriteLocationsBloc(
    BuildContext context,
  ) : super(
          context,
          SharedPreferencesLocationStorage("favorite_locations"),
        );
}

int sortByFavoriteLocations(
  dynamic a,
  dynamic b,
  List<TrufiLocation> favorites,
) {
  return sortByLocations(a, b, favorites);
}
