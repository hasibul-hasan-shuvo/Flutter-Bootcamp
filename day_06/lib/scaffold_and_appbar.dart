import 'package:flutter/material.dart';

class ScaffoldAndAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("This is title"),
      ),
    );
  }
}
