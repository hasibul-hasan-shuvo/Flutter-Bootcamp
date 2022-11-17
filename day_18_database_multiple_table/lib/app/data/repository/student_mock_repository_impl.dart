import 'package:day_18_database_multiple_table/app/data/repository/student_repository.dart';
import 'package:day_18_database_multiple_table/app/modules/home/model/student_list_item_ui_model.dart';
import 'package:day_18_database_multiple_table/app/modules/student_entry/model/student_ui_model.dart';

class StudentMockRepositoryImpl implements StudentRepository {
  @override
  Future<bool> saveStudentData(StudentUiModel data) {
    return Future.value(true);
  }

  @override
  Future<List<StudentListItemUiModel>> getStudentList() {
    return Future.value([
      StudentListItemUiModel(
        name: "John Doe",
        email: "john@example.com",
        id: 1,
      ),
      StudentListItemUiModel(
        name: "John Doe 2",
        email: "john2@example.com",
        id: 2,
      ),
      StudentListItemUiModel(
        name: "John Doe 3",
        email: "john3@example.com",
        id: 3,
      ),
    ]);
  }
}
