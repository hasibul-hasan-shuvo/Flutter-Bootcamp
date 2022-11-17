import 'dart:async';

import 'package:day_18_database_multiple_table/app/data/local/db/dao/student_dao.dart';
import 'package:day_18_database_multiple_table/app/data/local/db/dao/subject_dao.dart';
import 'package:day_18_database_multiple_table/app/data/local/entity/student_entity.dart';
import 'package:day_18_database_multiple_table/app/data/local/entity/subject_entity.dart';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'app_database.g.dart';

@Database(
  version: 1,
  entities: [
    StudentEntity,
    SubjectEntity,
  ],
)
abstract class AppDatabase extends FloorDatabase {
  StudentDao get studentDao;
  SubjectDao get subjectDao;
}
