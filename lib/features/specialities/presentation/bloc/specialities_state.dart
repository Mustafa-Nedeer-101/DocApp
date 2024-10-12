part of 'specialities_bloc.dart';

sealed class SpecialitiesState {}

final class SpecialitiesLoadingState extends SpecialitiesState {}

final class SpecialitiesSuccessState extends SpecialitiesState {
  final List<SpecialityEntity> data;

  SpecialitiesSuccessState({required this.data});
}

final class SpecialitiesFailureState extends SpecialitiesState {
  final Failure error;

  SpecialitiesFailureState({required this.error});
}
