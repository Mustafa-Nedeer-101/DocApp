import 'package:maser_project/features/specialities/domain/entities/speciality_entity.dart';

import 'doctor_model.dart';

class SpecialityModel extends SpecialityEntity {
  List<DoctorModel>? doctorsList;
  SpecialityModel({super.id, super.name, required this.doctorsList})
      : super(doctors: doctorsList);

  factory SpecialityModel.fromJson(Map<String, dynamic> json) =>
      SpecialityModel(
        id: json['id'] as int?,
        name: json['name'] as String?,
        doctorsList: (json['doctors'] as List<dynamic>?)
            ?.map((e) => DoctorModel.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'doctors': doctorsList?.map((e) => e.toJson()).toList(),
      };
}
