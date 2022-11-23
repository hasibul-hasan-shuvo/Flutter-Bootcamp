import 'package:day_21_networking_dio_getx/app/data/repository/auth_repository.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class RequestHeaderInterceptor extends InterceptorsWrapper {
  final AuthRepository _repository = Get.find();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers.addAll({
      'api_key': "VGhpcyBpcyBBUEkgS0VZIGluIGJhc2U2NCBmb3JtYXQ=",
    });
    String token = _repository.getToken();

    options.headers.addIf(token.isNotEmpty, "token", token);

    super.onRequest(options, handler);
  }
}
