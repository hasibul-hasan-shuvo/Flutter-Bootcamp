import 'dart:async';

import 'package:day_15/note.dart';
import 'package:day_15/note_dao.dart';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'app_database.g.dart';

@Database(
  version: 1,
  entities: [
    Note,
  ],
)
abstract class AppDatabase extends FloorDatabase {
  NoteDao get noteDao;
}
