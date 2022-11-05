import 'package:day_15/app_database.dart';
import 'package:day_15/note.dart';
import 'package:flutter/material.dart';

class CreateNote extends StatefulWidget {
  const CreateNote({Key? key}) : super(key: key);

  @override
  State<CreateNote> createState() => _CreateNoteState();
}

class _CreateNoteState extends State<CreateNote> {
  TextEditingController titleEditingController = TextEditingController();
  TextEditingController noteEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 20.0,
          ),
          child: Column(
            children: [
              _getTitleInputView(),
              const SizedBox(height: 40),
              _getDescriptionInputView(),
              const SizedBox(height: 40),
              _getSaveButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getTitleInputView() {
    return TextField(
      controller: titleEditingController,
      maxLines: 1,
      decoration: const InputDecoration(
        label: Text("Title"),
        hintText: "Title",
      ),
    );
  }

  Widget _getDescriptionInputView() {
    return TextField(
      controller: noteEditingController,
      maxLines: 10,
      decoration: const InputDecoration(
        label: Text("Note"),
        hintText: "Note",
      ),
    );
  }

  Widget _getSaveButton() {
    return ElevatedButton(
      onPressed: () async {
        final AppDatabase database =
            await $FloorAppDatabase.databaseBuilder('app_database.db').build();
        final result = database.noteDao.insertNote(
          Note(
            titleEditingController.text,
            noteEditingController.text,
          ),
        );

        Navigator.pop(context);
      },
      child: Text("Save"),
    );
  }
}
