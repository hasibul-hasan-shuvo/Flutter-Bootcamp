import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        reverse: true,
        children: [
          ListTile(
            leading: Icon(Icons.one_k),
            title: Text("Test 1"),
            subtitle: Text("Sub title 1"),
          ),
          ListTile(
            leading: Icon(Icons.two_k),
            title: Text("Test 2"),
            subtitle: Text("Sub title 2"),
          ),
          ListTile(
            leading: Icon(Icons.three_k),
            title: Text("Test 3"),
            subtitle: Text("Sub title 3"),
            onTap: () {
              print("Test 3 tapped");
            },
          ),
          ListTile(
            leading: Icon(Icons.one_k),
            title: Text("Test 1"),
            subtitle: Text("Sub title 1"),
          ),
          ListTile(
            leading: Icon(Icons.two_k),
            title: Text("Test 2"),
            subtitle: Text("Sub title 2"),
          ),
          ListTile(
            leading: Icon(Icons.three_k),
            title: Text("Test 3"),
            subtitle: Text("Sub title 3"),
            onTap: () {
              print("Test 3 tapped");
            },
          ),
          ListTile(
            leading: Icon(Icons.one_k),
            title: Text("Test 1"),
            subtitle: Text("Sub title 1"),
          ),
          ListTile(
            leading: Icon(Icons.two_k),
            title: Text("Test 2"),
            subtitle: Text("Sub title 2"),
          ),
          ListTile(
            leading: Icon(Icons.three_k),
            title: Text("Test 3"),
            subtitle: Text("Sub title 3"),
            onTap: () {
              print("Test 3 tapped");
            },
          ),
          ListTile(
            leading: Icon(Icons.one_k),
            title: Text("Test 1"),
            subtitle: Text("Sub title 1"),
          ),
          ListTile(
            leading: Icon(Icons.two_k),
            title: Text("Test 2"),
            subtitle: Text("Sub title 2"),
          ),
          ListTile(
            leading: Icon(Icons.three_k),
            title: Text("Test 3"),
            subtitle: Text("Sub title 3"),
            onTap: () {
              print("Test 3 tapped");
            },
          ),
          ListTile(
            leading: Icon(Icons.one_k),
            title: Text("Test 1"),
            subtitle: Text("Sub title 1"),
          ),
          ListTile(
            leading: Icon(Icons.two_k),
            title: Text("Test 2"),
            subtitle: Text("Sub title 2"),
          ),
          ListTile(
            leading: Icon(Icons.three_k),
            title: Text("Test 3"),
            subtitle: Text("Sub title 3"),
            onTap: () {
              print("Test 3 tapped");
            },
          ),
          Row(
            children: [
              Expanded(child: Container(height: 20, color: Colors.green)),
              Expanded(child: Container(height: 20, color: Colors.red)),
            ],
          )
        ],
      ),
    );
  }
}
