import 'package:day_14/weather_data_response.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

void main() async {
  getCurrentWeather();
  // getEventData();
}

void getCurrentWeather() async {
  const String baseUrl = "https://api.openweathermap.org/data/2.5/";

  PrettyDioLogger prettyDioLogger = PrettyDioLogger(
    requestHeader: true,
    requestBody: true,
    responseBody: true,
    responseHeader: false,
    error: true,
    compact: true,
    maxWidth: 90,
  );

  BaseOptions options = BaseOptions(
    baseUrl: baseUrl,
    connectTimeout: 60 * 1000,
    receiveTimeout: 60 * 1000,
    headers: {
      'content-type': 'application/json',
    },
    queryParameters: {
      'appid': '53ff9e496533a5825283efd26404984b',
    },
  );

  Dio dio = Dio(options);
  // Dio dio = Dio();

  dio.interceptors.add(prettyDioLogger);

  Response<dynamic> response = await dio.get(
    "weather",
    queryParameters: {
      'lat': '23.7746591',
      'lon': '90.4030951',
    },
  );

  WeatherDataResponse responseData =
      WeatherDataResponse.fromJson(response.data);

  Logger().d("City name: ${responseData.name}");

  // response.d
}

final String token =
    "Bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6IlZ4M2hoZEdCMkJ1UGFzNlo2d0VEcyJ9.eyJpc3MiOiJodHRwczovL3ZudHguZXUuYXV0aDAuY29tLyIsInN1YiI6ImVtYWlsfDYzM2VjN2I4YTU0YWViNGFiOWY5M2ZjNyIsImF1ZCI6WyJodHRwczovL3ZudHguZXUuYXV0aDAuY29tL2FwaS92Mi8iLCJodHRwczovL3ZudHguZXUuYXV0aDAuY29tL3VzZXJpbmZvIl0sImlhdCI6MTY2NzM5NTkxOCwiZXhwIjoxNjY5OTg3OTE4LCJhenAiOiJMNFJjVENTMFljbU1RTlFMS284QkRtVzV3UUNWQXdFbiIsInNjb3BlIjoib3BlbmlkIHByb2ZpbGUgZW1haWwgcmVhZDpjdXJyZW50X3VzZXIgdXBkYXRlOmN1cnJlbnRfdXNlcl9tZXRhZGF0YSBkZWxldGU6Y3VycmVudF91c2VyX21ldGFkYXRhIGNyZWF0ZTpjdXJyZW50X3VzZXJfbWV0YWRhdGEgY3JlYXRlOmN1cnJlbnRfdXNlcl9kZXZpY2VfY3JlZGVudGlhbHMgZGVsZXRlOmN1cnJlbnRfdXNlcl9kZXZpY2VfY3JlZGVudGlhbHMgdXBkYXRlOmN1cnJlbnRfdXNlcl9pZGVudGl0aWVzIiwiZ3R5IjoicGFzc3dvcmQifQ.qEBkH3PURlWCOmgF3xSVzcOstZ8QDplRYjAtmweJUAzIlIbCwTA1WmqLeR8A-3nCgMjTvJ2x0F0Bw0cnYKKYeq9cz2FjV0Cp5aXQr1jhzliBWPC7_R297_NSdz6zwM9T3_UsfR12IEBuzbqk17fe3-If3L6ErhPJHFuJq76kbGOMZ7WWzHOaV5UGj3nw-JbVLQbdtJEir8Qx7PC0HxVlq5QD2Slb1PMXy0OxUGxAneEMcYylOKjizoMOlfP7ylEHtfw2jIF4Q_evLVYoR8snxtjAjUCT3QoRI6KaKtFMu6QBgzeHkVRq4Z_db4xI6FS2mM8IygyQH6crHmdzg9Hdjg";

void getEventData() async {
  const String baseUrl = "https://api-dev.vntx.no/api/";

  PrettyDioLogger prettyDioLogger = PrettyDioLogger(
    requestHeader: true,
    requestBody: true,
    responseBody: true,
    responseHeader: false,
    error: true,
    compact: true,
    maxWidth: 90,
  );

  BaseOptions options = BaseOptions(
    baseUrl: baseUrl,
    connectTimeout: 60 * 1000,
    receiveTimeout: 60 * 1000,
    headers: {
      'content-type': 'application/json',
      'Authorization': token,
    },
  );

  Dio dio = Dio(options);

  dio.interceptors.add(prettyDioLogger);

  Response<dynamic> response = await dio.get(
    "events/my",
  );
}
