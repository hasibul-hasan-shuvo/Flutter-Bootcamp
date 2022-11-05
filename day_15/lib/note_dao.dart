import 'package:day_15/note.dart';
import 'package:floor/floor.dart';

@dao
abstract class NoteDao {
  @insert
  Future<void> insertNote(Note note);

  @Query("SELECT * FROM Note")
  Future<List<Note>> getAllNotes();
}
