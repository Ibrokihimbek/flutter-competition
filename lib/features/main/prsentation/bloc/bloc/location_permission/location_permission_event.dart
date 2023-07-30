part of 'location_permission_bloc.dart';

abstract class LocationPermissionEvent extends Equatable {
  const LocationPermissionEvent();
}

class FetchCurrentLocationEvent extends LocationPermissionEvent {
  const FetchCurrentLocationEvent();

  @override
  List<Object?> get props => [];
}
