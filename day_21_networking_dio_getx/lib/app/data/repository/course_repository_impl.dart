import 'package:day_21_networking_dio_getx/app/data/model/course_info_response.dart';
import 'package:day_21_networking_dio_getx/app/data/remote/course_remote_data_source.dart';
import 'package:day_21_networking_dio_getx/app/data/repository/course_repository.dart';
import 'package:get/get.dart';

class CourseRepositoryImpl implements CourseRepository {
  final CourseRemoteDataSource _remoteDataSource = Get.find();

  @override
  Future<CourseInfoResponse> getCourseInfo() {
    return _remoteDataSource.getCourseInfo();
  }
}
