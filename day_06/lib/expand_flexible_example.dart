import 'package:flutter/material.dart';

class ExpandFlexibleExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            color: Colors.blue,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.green,
          ),
        ),
        // Flexible(
        //   flex: 1,
        //   child: Container(
        //     color: Colors.blue,
        //   ),
        // ),
        // Flexible(
        //   flex: 2,
        //   child: Container(
        //     color: Colors.green,
        //   ),
        // ),
      ],
    );
  }
}
