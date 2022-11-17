import 'package:floor/floor.dart';

@Entity(tableName: "subject")
class SubjectEntity {
  @PrimaryKey(autoGenerate: true)
  @ColumnInfo(name: "id")
  int? id;
  @ColumnInfo(name: "name")
  String? name;
  @ColumnInfo(name: "code")
  int? code;
  @ColumnInfo(name: "credit")
  int? credit;
  @ColumnInfo(name: "fk_registration_no")
  String? registrationNo;

  SubjectEntity({
    required this.name,
    required this.code,
    required this.credit,
    required this.registrationNo,
  });
}
