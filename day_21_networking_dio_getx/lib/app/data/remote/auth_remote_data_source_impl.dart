import 'package:day_21_networking_dio_getx/app/core/model/login_arguments.dart';
import 'package:day_21_networking_dio_getx/app/core/values/end_point.dart';
import 'package:day_21_networking_dio_getx/app/data/model/login_response.dart';
import 'package:day_21_networking_dio_getx/app/data/remote/auth_remote_data_source.dart';
import 'package:day_21_networking_dio_getx/app/network/dio_provider.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  @override
  Future<LoginResponse> loginUser(LoginArguments arguments) {
    Dio dioClient = DioProvider.dioWithHeaderToken;

    return dioClient
        .post(
      EndPoints.login,
      data: arguments.toJson(),
    )
        .then(
      (response) => _parseLoginSuccessResponse(response),
      onError: (exception) {
        if (exception is DioError) {
          String errorMessage = _handleDioError(exception);
          Logger().e("Login Dio Exception: $errorMessage");

          throw errorMessage;
          // throw errorMessage;
        } else {
          Logger().e("Login App Exception:");
          throw "generic error";
        }
      },
    );
  }

  LoginResponse _parseLoginSuccessResponse(Response<dynamic> response) {
    return LoginResponse.fromJson(response.data);
  }

  String _handleDioError(DioError error) {
    switch (error.type) {
      case DioErrorType.cancel:
        return "Request to API server was cancelled";
      case DioErrorType.connectTimeout:
        return "Connection timeout with API server";
      case DioErrorType.other:
        return "There is no internet connection";
      case DioErrorType.receiveTimeout:
        return "Receive timeout in connection with API server";
      case DioErrorType.sendTimeout:
        return "Send timeout in connection with API server";
      case DioErrorType.response:
        return _parseDioError(error);
    }
  }

  String _parseDioError(DioError error) {
    if (error.response?.data['message'] != null) {
      return error.response?.data['message'];
    } else {
      return "We couldn't extract the error message";
    }
  }
}
