import 'package:day_21_networking_dio_getx/app/data/model/course_info_response.dart';

abstract class CourseRepository {
  Future<CourseInfoResponse> getCourseInfo();
}
