import 'package:maser_project/features/specialities/domain/entities/governrate_entity.dart';

class GovernrateModel extends GovernrateEntity {
  GovernrateModel({super.id, super.name});

  factory GovernrateModel.fromJson(Map<String, dynamic> json) =>
      GovernrateModel(
        id: json['id'] as int?,
        name: json['name'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };
}
