import 'package:maser_project/core/constants/eums.dart';
import 'package:maser_project/features/doctors/domain/entities/doctor_entity.dart';

class SearchDoctorsUsecase {
  List<DoctorEntity> call(
      {required List<DoctorEntity> doctors,
      required SearchBy searchBy,
      required String value}) {
    switch (searchBy) {
      case SearchBy.city:
        return doctors
            .where((doctor) => doctor.city!.name!.contains(value))
            .toList();
      case SearchBy.specialization:
        return doctors
            .where((doctor) => doctor.specialization!.name!.contains(value))
            .toList();
      case SearchBy.name:
        return doctors.where((doctor) => doctor.name!.contains(value)).toList();
      case SearchBy.degree:
        return doctors
            .where((doctor) => doctor.degree!.contains(value))
            .toList();
      case SearchBy.price:
        return doctors
            .where((doctor) => doctor.appointPrice!.toString() == value)
            .toList();
    }
  }
}
