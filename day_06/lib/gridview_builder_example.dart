import 'package:flutter/material.dart';

class GridViewBuilderExample extends StatelessWidget {
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
    "Data 17",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        itemCount: dataList.length,
        itemBuilder: (BuildContext context, int index) {
          return GridTile(
            child: Container(
              color: Colors.red,
              child: Center(
                child: Text(dataList[index]),
              ),
            ),
          );
        },
      ),
    );
  }
}
