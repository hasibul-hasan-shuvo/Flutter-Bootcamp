import 'package:day_15/app_database.dart';
import 'package:day_15/note.dart';
import 'package:floor/floor.dart';

@dao
abstract class NoteDao {
  @insert
  Future<void> insertNote(Note note);

  @Query("SELECT * FROM Note")
  Future<List<Note>> getAllNotes();

  Future<List<Note>> getNotes() async {
    final AppDatabase database =
        await $FloorAppDatabase.databaseBuilder('app_database.db').build();

    return QueryAdapter(database.database).queryList(
      "SELECT * FROM Note",
      mapper: (Map<String, dynamic> row) =>
          Note(row['title'], row['note'], id: row['id']),
    );
  }
}
