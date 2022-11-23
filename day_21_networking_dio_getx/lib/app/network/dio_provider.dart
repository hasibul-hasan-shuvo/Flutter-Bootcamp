import 'package:day_21_networking_dio_getx/app/network/request_header_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioProvider {
  static final String baseUrl = "https://test.hellohasan.com";
  static Dio? _instance;

  static final BaseOptions _options = BaseOptions(
    baseUrl: baseUrl,
    connectTimeout: 10 * 1000,
    receiveTimeout: 10 * 1000,
  );

  static final PrettyDioLogger _prettyDioLogger = PrettyDioLogger(
    requestHeader: true,
    requestBody: true,
    responseBody: true,
    error: true,
    compact: true,
  );

  static Dio get httpDio {
    if (_instance == null) {
      _instance ??= Dio(_options);

      _instance!.interceptors.add(_prettyDioLogger);
    } else {
      _instance!.interceptors.clear();
      _instance!.interceptors.add(_prettyDioLogger);
    }

    return _instance!;
  }

  static Dio get dioWithHeaderToken {
    _instance ??= httpDio;
    _addHeaders();

    return _instance!;
  }

  static void _addHeaders() {
    _instance!.interceptors.clear();
    _instance!.interceptors.add(_prettyDioLogger);
    _instance!.interceptors.add(RequestHeaderInterceptor());
  }
}
