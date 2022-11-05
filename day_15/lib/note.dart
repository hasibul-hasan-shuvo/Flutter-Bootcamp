import 'package:floor/floor.dart';

@Entity(tableName: "Note")
class Note {
  @PrimaryKey(autoGenerate: true)
  final int? id;
  @ColumnInfo(name: "title")
  final String title;
  @ColumnInfo(name: "note")
  final String note;

  Note(this.title, this.note, {this.id});
}
