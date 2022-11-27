import 'package:day_21_networking_dio_getx/app/data/model/student_list_response.dart';
import 'package:day_21_networking_dio_getx/app/data/remote/student_remote_data_source.dart';
import 'package:day_21_networking_dio_getx/app/data/repository/student_repository.dart';
import 'package:get/get.dart';

class StudentRepositoryImpl implements StudentRepository {
  final StudentRemoteDataSource _remoteDataSource = Get.find();

  @override
  Future<StudentListResponse> getStudentList() {
    return _remoteDataSource.getStudentList();
  }
}
