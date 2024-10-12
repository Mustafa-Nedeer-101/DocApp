import 'package:bloc/bloc.dart';
import 'package:maser_project/core/constants/eums.dart';
import 'package:maser_project/core/dependency_injection/dependency_injection.dart';
import 'package:maser_project/core/errors/failure.dart';
import 'package:maser_project/core/params/params.dart';
import 'package:maser_project/features/doctors/data/repositories/doctors_repo.dart';
import 'package:maser_project/features/doctors/domain/entities/doctor_entity.dart';
import 'package:maser_project/features/doctors/domain/usecases/get_doctors_usecase.dart';
import 'package:maser_project/features/doctors/domain/usecases/search_doctors_usecase.dart';

part 'doctors_event.dart';
part 'doctors_state.dart';

class DoctorsBloc extends Bloc<DoctorsEvent, DoctorsState> {
  final List<DoctorEntity> listOfDoctors = [];

  DoctorsBloc() : super(DoctorsLoadingState()) {
    on<GetDoctorsEvent>((event, emit) async {
      // Start Loading
      emit(DoctorsLoadingState());

      // Get Doctors
      final result = await GetDoctorsUsecase(repo: getIt<DoctorsRepoImp>())
          .call(params: DoctorsParams());

      // Success or Failure
      result.fold((left) {
        emit(DoctorsFailureState(error: left));
      }, (right) {
        listOfDoctors.addAll(right);

        emit(DoctorsSuccessState(data: right));
      });
    });

    on<SearchDoctorsEvent>((event, emit) {
      emit(DoctorsLoadingState());

      final List<DoctorEntity> searchedDoctors = SearchDoctorsUsecase().call(
          doctors: listOfDoctors, searchBy: event.searchBy, value: event.value);

      emit(DoctorsSuccessState(data: searchedDoctors));
    });
  }
}
