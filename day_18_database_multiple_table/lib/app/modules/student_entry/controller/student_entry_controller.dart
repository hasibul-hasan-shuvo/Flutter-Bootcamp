import 'package:day_18_database_multiple_table/app/data/repository/student_repository.dart';
import 'package:day_18_database_multiple_table/app/data/repository/student_repository_impl.dart';
import 'package:day_18_database_multiple_table/app/modules/student_entry/model/student_ui_model.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

class StudentEntryController {
  final StudentRepository _repository = StudentRepositoryImpl();

  void saveStudentData(StudentUiModel data) async {
    if (_isStudentDataValid(data)) {
      bool isSuccess = await _repository.saveStudentData(data);
      if (isSuccess) {
        Logger().i("Saved data");
        Get.back(result: true);
        // TODO: show success message
      } else {
        // TODO: show failure page
      }
    }
  }

  bool _isStudentDataValid(StudentUiModel data) {
    return data.name.isNotEmpty;
  }
}
