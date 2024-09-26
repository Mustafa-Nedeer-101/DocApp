import 'package:maser_project/features/specialities/domain/entities/governrate_entity.dart';

class CityEntity {
  int? id;
  String? name;
  GovernrateEntity? governrate;
  CityEntity({
    this.id,
    this.name,
    this.governrate,
  });
}
