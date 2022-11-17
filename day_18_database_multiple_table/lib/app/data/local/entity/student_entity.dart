import 'package:day_18_database_multiple_table/app/modules/student_entry/model/student_ui_model.dart';
import 'package:floor/floor.dart';

@Entity(tableName: "student")
class StudentEntity {
  @PrimaryKey(autoGenerate: true)
  @ColumnInfo(name: "id")
  int? id;
  @ColumnInfo(name: "name")
  String? name;
  @ColumnInfo(name: "email")
  String? email;
  @ColumnInfo(name: "phone")
  String? phone;
  @ColumnInfo(name: "registration_no")
  String? registrationNo;

  StudentEntity({
    required this.name,
    required this.email,
    required this.phone,
    required this.registrationNo,
  });

  StudentEntity.fromStudentUiModel(StudentUiModel data) {
    name = data.name;
    email = data.email;
    phone = data.phone;
    registrationNo = data.registrationNo;
  }
}
