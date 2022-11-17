import 'package:day_18_database_multiple_table/app/data/local/db/app_database.dart';
import 'package:day_18_database_multiple_table/app/data/local/entity/student_entity.dart';
import 'package:day_18_database_multiple_table/app/data/repository/student_repository.dart';
import 'package:day_18_database_multiple_table/app/modules/home/model/student_list_item_ui_model.dart';
import 'package:day_18_database_multiple_table/app/modules/student_entry/model/student_ui_model.dart';

class StudentRepositoryImpl implements StudentRepository {
  @override
  Future<bool> saveStudentData(StudentUiModel data) async {
    AppDatabase database =
        await $FloorAppDatabase.databaseBuilder("app_database.db").build();
    StudentEntity entity = StudentEntity.fromStudentUiModel(data);
    await database.studentDao.insertStudent(entity);

    return true;
  }

  @override
  Future<List<StudentListItemUiModel>> getStudentList() async {
    AppDatabase database =
        await $FloorAppDatabase.databaseBuilder("app_database.db").build();
    List<StudentEntity> list = await database.studentDao.getStudentList();

    return list
        .map(
          (item) => StudentListItemUiModel(
            name: item.name ?? "",
            email: item.email ?? "",
            id: item.id ?? -1,
          ),
        )
        .toList();
  }
}
