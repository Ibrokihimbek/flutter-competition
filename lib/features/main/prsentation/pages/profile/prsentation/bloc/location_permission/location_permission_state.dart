part of 'location_permission_bloc.dart';

class LocationPermissionState extends Equatable {
  final LatLongModel? latLongModel;
  final MyPermissionStatus myPermissionStatus;

  const LocationPermissionState(
      {required this.latLongModel, required this.myPermissionStatus});

  LocationPermissionState copyWith({
    MyPermissionStatus? myPermissionStatus,
    LatLongModel? latLongModel,
  }) =>
      LocationPermissionState(
        latLongModel: latLongModel ?? this.latLongModel,
        myPermissionStatus: myPermissionStatus ?? this.myPermissionStatus,
      );

  @override
  List<Object?> get props => [latLongModel, myPermissionStatus];
}

enum MyPermissionStatus { pure, loading, success, fail }
