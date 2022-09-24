import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image(
              image: AssetImage("images/flutter_image.jpeg"),
              fit: BoxFit.fitWidth,
            ),
            Image(
              image: AssetImage("images/flutter_image.jpeg"),
              fit: BoxFit.fitWidth,
            ),
            Image(
              image: AssetImage("images/flutter_image.jpeg"),
              fit: BoxFit.fitWidth,
            ),
          ],
        ),
      ),
    );
  }
}
