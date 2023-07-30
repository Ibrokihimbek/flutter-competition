part of 'on_boarding_bloc.dart';

class OnBoardingState extends Equatable {
  final int currentPage;

  const OnBoardingState({required this.currentPage});

  OnBoardingState copyWith({int? currentPage}) =>
      OnBoardingState(currentPage: currentPage ?? this.currentPage);

  @override
  List<Object?> get props => [currentPage];
}
