import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:maser_project/core/dep_injection/dependency_injection.dart';
import 'package:maser_project/core/errors/failure.dart';
import 'package:maser_project/core/params/params.dart';
import 'package:maser_project/features/doctors/data/repositories/doctors_repo.dart';
import 'package:maser_project/features/doctors/domain/entities/doctor_entity.dart';
import 'package:maser_project/features/doctors/domain/usecases/get_doctors_usecase.dart';

part 'doctors_event.dart';
part 'doctors_state.dart';
part 'doctors_bloc.freezed.dart';

class DoctorsBloc extends Bloc<DoctorsEvent, DoctorsState> {
  DoctorsBloc() : super(const _Initial()) {
    on<_Started>((event, emit) async {
      // Start Loading
      emit(const DoctorsState.loading());

      // Get Doctors
      final result = await GetDoctorsUsecase(repo: getIt<DoctorsRepoImp>())
          .call(params: DoctorsParams());

      // Success or Failure
      result.fold((left) {
        emit(DoctorsState.failure(error: left));
      }, (right) {
        emit(DoctorsState.success(data: right));
      });
    });
  }
}
