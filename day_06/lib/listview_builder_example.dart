import 'package:flutter/material.dart';

class ListViewBuilderExample extends StatelessWidget {
  List<String> dataList = [
    "Data 1",
    "Data 2",
    "Data 3",
    "Data 4",
    "Data 5",
    "Data 6",
    "Data 7",
    "Data 8",
    "Data 9",
    "Data 10",
    "Data 11",
    "Data 12",
    "Data 13",
    "Data 14",
    "Data 15",
    "Data 16",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        reverse: true,
        shrinkWrap: true,
        itemCount: dataList.length,
        itemBuilder: (BuildContext listContext, int index) {
          return ListTile(
            title: Text(dataList[index]),
          );
        },
      ),
    );
  }
}
