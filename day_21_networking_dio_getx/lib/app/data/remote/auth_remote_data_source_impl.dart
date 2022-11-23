import 'package:day_21_networking_dio_getx/app/core/model/login_arguments.dart';
import 'package:day_21_networking_dio_getx/app/core/values/end_point.dart';
import 'package:day_21_networking_dio_getx/app/data/model/login_response.dart';
import 'package:day_21_networking_dio_getx/app/data/remote/auth_remote_data_source.dart';
import 'package:day_21_networking_dio_getx/app/network/dio_provider.dart';
import 'package:dio/dio.dart';

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  @override
  Future<LoginResponse> loginUser(LoginArguments arguments) {
    Dio dioClient = DioProvider.dioWithHeaderToken;

    return dioClient
        .post(
          EndPoints.login,
          data: arguments.toJson(),
        )
        .then((response) => _parseLoginSuccessResponse(response));
  }

  LoginResponse _parseLoginSuccessResponse(Response<dynamic> response) {
    return LoginResponse.fromJson(response.data);
  }
}
