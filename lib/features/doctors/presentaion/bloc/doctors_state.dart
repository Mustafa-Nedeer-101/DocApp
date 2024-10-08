part of 'doctors_bloc.dart';

sealed class DoctorsState {}

final class DoctorsLoadingState extends DoctorsState {}

final class DoctorsSuccessState extends DoctorsState {
  final List<DoctorEntity> data;

  DoctorsSuccessState({required this.data});
}

final class DoctorsFailureState extends DoctorsState {
  final Failure error;

  DoctorsFailureState({required this.error});
}
