import 'package:day_18_database_multiple_table/app/modules/home/model/student_list_item_ui_model.dart';
import 'package:day_18_database_multiple_table/app/modules/student_entry/model/student_ui_model.dart';

abstract class StudentRepository {
  Future<bool> saveStudentData(StudentUiModel data);
  Future<List<StudentListItemUiModel>> getStudentList();
}
