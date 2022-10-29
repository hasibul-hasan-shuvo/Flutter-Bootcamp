import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> _items = [
    "Bangladesh",
    "India",
    "America",
    "China",
  ];

  // final List<DropdownMenuItem<String>> _items = [
  //   DropdownMenuItem(value: "BD", child: Text("Bangladesh")),
  //   DropdownMenuItem(value: "IN", child: Text("India")),
  //   DropdownMenuItem(value: "USA", child: Text("America")),
  //   DropdownMenuItem(value: "CN", child: Text("China")),
  // ];

  String _selectedValue = "BD";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(
              value: _selectedValue,
              items: _getItems(),
              onChanged: (String? value) {
                print("Selected value: $value");
                if (value != null) {
                  setState(() {
                    _selectedValue = value;
                  });
                }
              },
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  List<DropdownMenuItem<String>> _getItems() {
    List<DropdownMenuItem<String>> itemList = [];

    for (String item in _items) {
      itemList.add(DropdownMenuItem(value: item, child: Text(item)));
    }

    return itemList;
  }
}
