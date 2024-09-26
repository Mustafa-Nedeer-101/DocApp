import 'package:maser_project/features/specialities/domain/entities/city_entity.dart';

class DoctorEntity {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? photo;
  String? gender;
  String? address;
  String? description;
  String? degree;
  SpecializationEntity? specialization;
  CityEntity? city;
  int? appointPrice;
  String? startTime;
  String? endTime;
  DoctorEntity({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.photo,
    this.gender,
    this.appointPrice,
    this.degree,
    this.address,
    this.description,
    this.specialization,
    this.city,
    this.startTime,
    this.endTime,
  });
}

class SpecializationEntity {
  int? id;
  String? name;
  SpecializationEntity({
    this.id,
    this.name,
  });
}
