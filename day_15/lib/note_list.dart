import 'package:day_15/app_database.dart';
import 'package:day_15/create_note.dart';
import 'package:day_15/note.dart';
import 'package:flutter/material.dart';

class NoteList extends StatefulWidget {
  const NoteList({Key? key}) : super(key: key);

  @override
  State<NoteList> createState() => _NoteListState();
}

class _NoteListState extends State<NoteList> {
  List<Note> noteList = [];

  @override
  void initState() {
    super.initState();
    getNoteList();
  }

  void getNoteList() async {
    final AppDatabase database =
        await $FloorAppDatabase.databaseBuilder('app_database.db').build();

    List<Note> list = await database.noteDao.getAllNotes();
    setState(() {
      noteList = list;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getNoteListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(
                MaterialPageRoute(
                  builder: (builderContext) => const CreateNote(),
                ),
              )
              .whenComplete(() => getNoteList());
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _getNoteListView() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: noteList.length,
      itemBuilder: _getItemBuilder,
    );
  }

  Widget _getItemBuilder(BuildContext context, int index) {
    return ListTile(
      title: Text(noteList[index].title),
      subtitle: Text(noteList[index].note),
    );
  }
}
