part of 'doctors_bloc.dart';

@freezed
class DoctorsEvent with _$DoctorsEvent {
  const factory DoctorsEvent.started() = _Started;

  const factory DoctorsEvent.search(SearchBy searchBy, String value) = _Search;
}
