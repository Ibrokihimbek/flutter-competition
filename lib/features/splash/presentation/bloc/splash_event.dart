part of 'splash_bloc.dart';

abstract class SplashEvent extends Equatable {
  const SplashEvent();
}

class SplashDurationEvent extends SplashEvent {
  const SplashDurationEvent();

  @override
  List<Object?> get props => [];
}
