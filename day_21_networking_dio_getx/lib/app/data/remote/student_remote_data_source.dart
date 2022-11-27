import 'package:day_21_networking_dio_getx/app/data/model/student_list_response.dart';

abstract class StudentRemoteDataSource {
  Future<StudentListResponse> getStudentList();
}
