import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:maser_project/core/dep_injection/dependency_injection.dart';
import 'package:maser_project/core/errors/failure.dart';
import 'package:maser_project/core/params/params.dart';
import 'package:maser_project/features/specialities/data/repositories/specialities_repo.dart';
import 'package:maser_project/features/specialities/domain/usecases/get_specialitities_usecase.dart';

import '../domain/entities/speciality_entity.dart';

part 'specialities_event.dart';
part 'specialities_state.dart';
part 'specialities_bloc.freezed.dart';

class SpecialitiesBloc extends Bloc<SpecialitiesEvent, SpecialitiesState> {
  SpecialitiesBloc() : super(const _Initial()) {
    on<_Started>((event, emit) async {
      // Start Loading
      emit(const SpecialitiesState.loading());

      // Get Specialities
      final result =
          await GetSpecialititiesUsecase(repo: getIt<SpecialitiesRepoImp>())
              .call(params: SpecialitiesParams());

      // Success or Failure
      result.fold((left) {
        emit(SpecialitiesState.failure(error: left));
      }, (right) {
        emit(SpecialitiesState.success(data: right));
      });
    });
  }
}
