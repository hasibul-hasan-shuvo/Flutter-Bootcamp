import 'package:day_18_database_multiple_table/app/data/local/entity/subject_entity.dart';
import 'package:floor/floor.dart';

@dao
abstract class SubjectDao {
  @insert
  Future<void> insertSubject(SubjectEntity entity);

  @Query("SELECT * FROM subject")
  Future<List<SubjectEntity>> getSubjectList();

  @Query("SELECT * FROM subject WHERE fk_registration_no = :registrationNo")
  Future<List<SubjectEntity>> getSubjectByRegistrationNo(String registrationNo);
}
