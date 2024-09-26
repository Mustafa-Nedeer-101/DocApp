import 'package:maser_project/features/specialities/domain/entities/doctor_entity.dart';

import 'city_model.dart';
import 'specialization_model.dart';

class DoctorModel extends DoctorEntity {
  SpecializationModel? specializationModel;
  CityModel? cityModel;
  DoctorModel(
      {super.address,
      super.appointPrice,
      this.cityModel,
      super.degree,
      super.description,
      super.email,
      super.endTime,
      super.gender,
      super.id,
      super.name,
      super.phone,
      super.photo,
      this.specializationModel,
      super.startTime})
      : super(specialization: specializationModel, city: cityModel);
  factory DoctorModel.fromJson(Map<String, dynamic> json) => DoctorModel(
        id: json['id'] as int?,
        name: json['name'] as String?,
        email: json['email'] as String?,
        phone: json['phone'] as String?,
        photo: json['photo'] as String?,
        gender: json['gender'] as String?,
        address: json['address'] as String?,
        description: json['description'] as String?,
        degree: json['degree'] as String?,
        specializationModel: json['specialization'] == null
            ? null
            : SpecializationModel.fromJson(
                json['specialization'] as Map<String, dynamic>),
        cityModel: json['city'] == null
            ? null
            : CityModel.fromJson(json['city'] as Map<String, dynamic>),
        appointPrice: json['appoint_price'] as int?,
        startTime: json['start_time'] as String?,
        endTime: json['end_time'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
        'phone': phone,
        'photo': photo,
        'gender': gender,
        'address': address,
        'description': description,
        'degree': degree,
        'specialization': specializationModel?.toJson(),
        'city': cityModel?.toJson(),
        'appoint_price': appointPrice,
        'start_time': startTime,
        'end_time': endTime,
      };
}
