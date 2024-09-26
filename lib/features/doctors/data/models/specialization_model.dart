import 'package:maser_project/features/doctors/domain/entities/doctor_entity.dart';

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
