part of 'doctors_bloc.dart';

sealed class DoctorsEvent {}

final class GetDoctorsEvent extends DoctorsEvent {}

final class SearchDoctorsEvent extends DoctorsEvent {
  final SearchBy searchBy;
  final String value;

  SearchDoctorsEvent({required this.searchBy, required this.value});
}
