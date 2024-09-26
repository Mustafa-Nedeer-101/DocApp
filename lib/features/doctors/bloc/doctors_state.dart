part of 'doctors_bloc.dart';

@freezed
class DoctorsState with _$DoctorsState {
  const factory DoctorsState.initial() = _Initial;
  const factory DoctorsState.loading() = DocLoading;
  const factory DoctorsState.success({required List<DoctorEntity> data}) =
      DocSuccess;
  const factory DoctorsState.failure({required Failure error}) = DocFailure;
}
