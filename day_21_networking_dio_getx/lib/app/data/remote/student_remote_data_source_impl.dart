import 'package:day_21_networking_dio_getx/app/core/values/end_point.dart';
import 'package:day_21_networking_dio_getx/app/data/model/student_list_response.dart';
import 'package:day_21_networking_dio_getx/app/data/remote/student_remote_data_source.dart';
import 'package:day_21_networking_dio_getx/app/network/dio_provider.dart';
import 'package:dio/dio.dart';

class StudentRemoteDataSourceIml implements StudentRemoteDataSource {
  @override
  Future<StudentListResponse> getStudentList() {
    Dio dioClient = DioProvider.dioWithHeaderToken;

    return dioClient.get(EndPoints.studentList).then(
          (response) => _parseStudentListSuccessResponse(response),
        );
  }

  StudentListResponse _parseStudentListSuccessResponse(
      Response<dynamic> response) {
    return StudentListResponse.fromJson(response.data);
  }
}
