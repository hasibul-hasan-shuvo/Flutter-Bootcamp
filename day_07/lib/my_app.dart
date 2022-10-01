import 'package:day_07/app/core/values/app_colors.dart';
import 'package:day_07/app/modules/home/view/home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: AppColors.colorPrimary,
        primaryColorDark: AppColors.colorPrimaryDark,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
