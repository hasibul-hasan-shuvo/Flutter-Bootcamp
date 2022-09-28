import 'package:flutter/material.dart';

class ExpandFlexibleExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Container(
        //   color: Colors.blue,
        //   height: 100.0,
        //   width: 100.0,
        // ),
        // Container(
        //   color: Colors.red,
        //   height: 100.0,
        //   width: 100.0,
        // ),
        // Expanded(
        //   child: Container(
        //     color: Colors.blue,
        //   ),
        // ),
        // Expanded(
        //   child: Container(
        //     color: Colors.green,
        //   ),
        // ),

        Flexible(
          flex: 1,
          child: Container(
            color: Colors.blue,
            child: Icon(
              Icons.phone,
              size: 100,
              color: Colors.yellow,
            ),
          ),
        ),
        Flexible(
          // flex: 2,
          child: Container(
            color: Colors.green,
          ),
        ),
      ],
    );
  }
}
