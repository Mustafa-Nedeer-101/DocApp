// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:maser_project/features/specialities/domain/entities/doctor_entity.dart';

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
