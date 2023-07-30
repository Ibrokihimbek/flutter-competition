import 'package:equatable/equatable.dart';
import 'package:location/location.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_competition/features/main/prsentation/pages/profile/data/models/lat_long/lat_long_model.dart';

part 'location_permission_event.dart';

part 'location_permission_state.dart';

class LocationPermissionBloc
    extends Bloc<LocationPermissionEvent, LocationPermissionState> {
  LocationPermissionBloc()
      : super(
          LocationPermissionState(
              latLongModel: LatLongModel(lat: 0.0, long: 0.0),
              myPermissionStatus: MyPermissionStatus.pure),
        ) {
    on<FetchCurrentLocationEvent>(_fetchCurrentLocation);
  }

  Location location = Location();
  LatLongModel? latLongModel;

  bool _serviceEnabled = false;
  PermissionStatus _permissionGranted = PermissionStatus.denied;

  _fetchCurrentLocation(FetchCurrentLocationEvent event,
      Emitter<LocationPermissionState> emit) async {
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }
    emit(state.copyWith(myPermissionStatus: MyPermissionStatus.loading));
    LocationData locationData = await location.getLocation();
    // await Future.delayed(const Duration(seconds: 3));
    latLongModel = LatLongModel(
      lat: locationData.latitude!,
      long: locationData.longitude!,
    );
    if (latLongModel != null) {
      emit(state.copyWith(
          myPermissionStatus: MyPermissionStatus.success,
          latLongModel: latLongModel));
    } else {
      emit(state.copyWith(myPermissionStatus: MyPermissionStatus.fail));
    }
  }
}
