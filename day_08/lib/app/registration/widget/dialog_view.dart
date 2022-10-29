import 'package:flutter/material.dart';

class DialogView extends StatelessWidget {
  const DialogView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Warning!!!"),
      content: Text("You won't be able to register if you uncheck it."),
      backgroundColor: Colors.white,
      actions: [
        _getGotItButton(context),
      ],
    );
  }

  Widget _getGotItButton(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Text("Got it"),
      ),
    );
  }
}
