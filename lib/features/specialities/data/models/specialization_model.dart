// ignore_for_file: public_member_api_docs, sort_constructors_first

import '../../domain/entities/doctor_entity.dart';

class SpecializationModel extends SpecializationEntity {
  SpecializationModel({
    super.id,
    super.name,
  });

  factory SpecializationModel.fromJson(Map<String, dynamic> json) {
    return SpecializationModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };
}
