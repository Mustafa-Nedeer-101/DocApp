import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:maser_project/core/constants/api_constants.dart';
import 'package:maser_project/core/errors/exceptions.dart';
import 'package:maser_project/core/params/params.dart';
import 'package:maser_project/features/authentication/data/datasources/auth_remote_datasource.dart';
import 'package:maser_project/features/authentication/data/models/login_response_data_model.dart';
import 'package:maser_project/features/authentication/domain/entities/login_request_data_entity.dart';
import 'package:mockito/mockito.dart';

import 'login_test.mocks.dart';

void main() {
  late MockDio mockDio; // Use the MockDio class from mocks.dart
  late AuthRemoteDatasourceImp datasource;

  setUp(() {
    mockDio = MockDio();
    datasource = AuthRemoteDatasourceImp(dio: mockDio);
  });

  group('login', () {
    final loginParams = LoginParams(
        data: LoginRequestDataEntity(
            email: 'darsh@gmail.com', password: 'aA@11111'));

    const loginUrl = "${ApiConstants.apiBaseUrl}${ApiConstants.login}";

    final loginResponseData = {
      'data': {'token': 'mustafaisgenius!', 'user': {}}
    };

    test(
        'should return LoginResponseDataModel when the login call is successful',
        () async {
      // Arrange
      when(mockDio.post(loginUrl, data: anyNamed('data'))).thenAnswer(
        (_) async => Response(
          data: loginResponseData,
          statusCode: 200,
          requestOptions: RequestOptions(path: loginUrl),
        ),
      );

      // Act
      final result = await datasource.login(params: loginParams);

      // Assert
      expect(result, isA<LoginResponseDataModel>());
      expect(result.token,
          'mustafaisgenius!'); // You can assert more fields as needed
      verify(mockDio.post(loginUrl, data: anyNamed('data'))).called(1);
    });

    test('should return Failure when the login call is not successful',
        () async {
      // Arrange
      when(mockDio.post(loginUrl, data: anyNamed('data')))
          .thenAnswer((_) async => Response(
                data: {'message': 'Invalid credentials'},
                statusCode: 400,
                requestOptions: RequestOptions(path: loginUrl),
              ));

      // Act & Assert
      expect(
        () => datasource.login(params: loginParams),
        throwsA(isA<LogicException>()),
      );
      verify(mockDio.post(loginUrl, data: anyNamed('data'))).called(1);
    });
  });
}
