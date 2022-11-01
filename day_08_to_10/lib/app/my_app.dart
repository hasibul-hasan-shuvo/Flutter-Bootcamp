import 'package:day_08/app/routes/app_pages.dart';
import 'package:day_08/app/routes/app_routes.dart';
import 'package:flutter/material.dart';

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
      initialRoute: AppRoutes.LOGIN,
      routes: AppPages.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
