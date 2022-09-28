import 'package:flutter/material.dart';

class ScaffoldAndAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.back_hand),
        title: const Text("This is title"),
        actions: [
          Icon(Icons.add),
          Icon(Icons.search),
        ],
      ),
      body: Container(
        color: Colors.yellow,
      ),
    );
  }
}
