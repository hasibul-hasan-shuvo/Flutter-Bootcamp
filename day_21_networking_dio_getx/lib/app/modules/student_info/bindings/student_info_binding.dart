import 'package:get/get.dart';

import '../controllers/student_info_controller.dart';

class StudentInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StudentInfoController>(
      () => StudentInfoController(),
    );
  }
}
