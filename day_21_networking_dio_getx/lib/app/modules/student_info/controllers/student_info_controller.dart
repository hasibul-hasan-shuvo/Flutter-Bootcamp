import 'package:day_21_networking_dio_getx/app/data/repository/student_repository.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

class StudentInfoController extends GetxController {
  final StudentRepository _repository = Get.find();

  @override
  void onInit() {
    super.onInit();
    getStudentList();
  }

  void getStudentList() {
    _repository.getStudentList().then((response) {
      Logger().d("Student List: ${response.data}");
    });
  }
}
