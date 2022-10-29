import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  late String? email;

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    email = ModalRoute.of(context)?.settings.arguments as String;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: _getStackExample(),
        endDrawer: _getDrawer(),
        // bottomNavigationBar: _getBottomNavigationBar(),
      ),
    );

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text("Welcome $email"),
        ),
      ),
    );
  }

  Widget _getBottomNavigationBar() {
    return BottomNavigationBar(
      items: [BottomNavigationBarItem(icon: Icon(Icons.ac_unit))],
      backgroundColor: Colors.grey,
    );
  }

  Widget _getDrawer() {
    return Drawer(
      child: Column(
        children: [
          Icon(Icons.email),
          Text("Dummy text"),
        ],
      ),
    );
  }

  Widget _getStackExample() {
    return Container();
  }
}
