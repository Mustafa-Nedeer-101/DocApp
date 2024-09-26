import 'package:dio/dio.dart';
import 'package:maser_project/features/doctors/data/models/doctor_model.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/networking/api_constants.dart';
import '../../../../core/params/params.dart';

abstract interface class DoctorsRemoteDatasource {
  Future<List<DoctorModel>> getDoctors({required DoctorsParams params});
}

class DoctorsRemoteDatasourceImp implements DoctorsRemoteDatasource {
  final Dio dio;

  DoctorsRemoteDatasourceImp({required this.dio});
  @override
  Future<List<DoctorModel>> getDoctors({required DoctorsParams params}) async {
    final response =
        await dio.get("${ApiConstants.apiBaseUrl}${ApiConstants.doctors}",
            options: Options(headers: {
              'Authorization': 'Bearer ${params.token}',
            }));

    try {
      if (response.statusCode == 200) {
        final body = response.data as Map;
        final data = body['data'] as List;
        return data
            .map((e) => DoctorModel.fromJson(e as Map<String, dynamic>))
            .toList();
      } else {
        throw ServerException(message: 'An error at the server side!');
      }
    } catch (e) {
      rethrow;
    }
  }
}
