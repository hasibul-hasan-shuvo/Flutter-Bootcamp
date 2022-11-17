import 'package:day_18_database_multiple_table/app/data/local/entity/student_entity.dart';
import 'package:floor/floor.dart';

@dao
abstract class StudentDao {
  @insert
  Future<void> insertStudent(StudentEntity entity);

  @Query("SELECT * FROM student")
  Future<List<StudentEntity>> getStudentList();
}
