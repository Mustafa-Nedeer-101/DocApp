part of 'specialities_bloc.dart';

@freezed
class SpecialitiesEvent with _$SpecialitiesEvent {
  const factory SpecialitiesEvent.started() = _Started;

  // Get the Specialities event
  const factory SpecialitiesEvent.getSpecialities() = GetSpecialities;
}
