import 'package:bloc/bloc.dart';
import 'package:maser_project/core/dependency_injection/dependency_injection.dart';
import 'package:maser_project/core/errors/failure.dart';
import 'package:maser_project/core/params/params.dart';
import 'package:maser_project/features/specialities/data/repositories/specialities_repo.dart';
import 'package:maser_project/features/specialities/domain/usecases/get_specialitities_usecase.dart';

import '../../domain/entities/speciality_entity.dart';

part 'specialities_event.dart';
part 'specialities_state.dart';

class SpecialitiesBloc extends Bloc<SpecialitiesEvent, SpecialitiesState> {
  SpecialitiesBloc() : super(SpecialitiesLoadingState()) {
    on<GetSpecialitiesEvent>((event, emit) async {
      // Start Loading
      emit(SpecialitiesLoadingState());

      // Get Specialities
      final result =
          await GetSpecialititiesUsecase(repo: getIt<SpecialitiesRepoImp>())
              .call(params: SpecialitiesParams());

      // Success or Failure
      result.fold((left) {
        emit(SpecialitiesFailureState(error: left));
      }, (right) {
        emit(SpecialitiesSuccessState(data: right));
      });
    });
  }
}
