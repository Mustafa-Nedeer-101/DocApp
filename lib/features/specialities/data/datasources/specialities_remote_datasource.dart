import 'package:dio/dio.dart';
import 'package:maser_project/core/constants/api_constants.dart';
import 'package:maser_project/features/specialities/data/models/speciality_model.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/params/params.dart';

abstract interface class SpecialitiesRemoteDatasource {
  Future<List<SpecialityModel>> getSpecialities(
      {required SpecialitiesParams params});
}

class SpecialitiesRemoteDatasourceImp implements SpecialitiesRemoteDatasource {
  final Dio dio;

  SpecialitiesRemoteDatasourceImp({
    required this.dio,
  });

  @override
  Future<List<SpecialityModel>> getSpecialities(
      {required SpecialitiesParams params}) async {
    final response = await dio.get(
        "${ApiConstants.apiBaseUrl}${ApiConstants.specialization}",
        options: Options(headers: {
          'Authorization': 'Bearer ${params.token}',
        }));

    try {
      if (response.statusCode == 200) {
        final body = response.data as Map;
        final data = body['data'] as List<dynamic>;
        return data
            .map((e) => SpecialityModel.fromJson(e as Map<String, dynamic>))
            .toList();
      } else {
        throw ServerException(message: 'An error at the server side!');
      }
    } catch (e) {
      rethrow;
    }
  }
}
