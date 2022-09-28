import 'package:flutter/material.dart';

class GridViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        children: [
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.amber,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.amber,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.amber,
          ),
        ],
      ),
    );
  }
}
