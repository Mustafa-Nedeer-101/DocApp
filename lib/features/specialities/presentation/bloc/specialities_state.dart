part of 'specialities_bloc.dart';

@freezed
class SpecialitiesState with _$SpecialitiesState {
  const factory SpecialitiesState.initial() = _Initial;
  const factory SpecialitiesState.loading() = SpecLoading;
  const factory SpecialitiesState.success(
      {required List<SpecialityEntity> data}) = SpecSuccess;
  factory SpecialitiesState.failure({required Failure error}) = SpecFailure;
}
