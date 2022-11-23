import 'package:day_21_networking_dio_getx/app/data/model/course_info_response.dart';
import 'package:day_21_networking_dio_getx/app/data/remote/course_remote_data_source.dart';
import 'package:day_21_networking_dio_getx/app/network/dio_provider.dart';
import 'package:dio/dio.dart';

class CourseRemoteDataSourceImpl implements CourseRemoteDataSource {
  @override
  Future<CourseInfoResponse> getCourseInfo() {
    Dio dioClient = DioProvider.httpDio;

    return dioClient
        .get(
          "/flutter-course/course_info.php",
        )
        .then(
          (response) => _parseCourseInfoSuccessResponse(response),
        );
  }

  CourseInfoResponse _parseCourseInfoSuccessResponse(
      Response<dynamic> response) {
    return CourseInfoResponse.fromJson(response.data);
  }
}
