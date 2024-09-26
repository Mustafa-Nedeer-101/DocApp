import 'package:maser_project/features/specialities/domain/entities/city_entity.dart';

import 'governrate_model.dart';

class CityModel extends CityEntity {
  GovernrateModel? governrateModel;
  CityModel({super.id, super.name, this.governrateModel})
      : super(governrate: governrateModel);

  factory CityModel.fromJson(Map<String, dynamic> json) => CityModel(
        id: json['id'] as int?,
        name: json['name'] as String?,
        governrateModel: json['governrate'] == null
            ? null
            : GovernrateModel.fromJson(
                json['governrate'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'governrate': governrateModel?.toJson(),
      };
}
