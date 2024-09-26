import 'package:maser_project/features/doctors/domain/entities/doctor_entity.dart';

class SpecialityEntity {
  int? id;
  String? name;
  List<DoctorEntity>? doctors;
  SpecialityEntity({
    this.id,
    this.name,
    this.doctors,
  });
}
