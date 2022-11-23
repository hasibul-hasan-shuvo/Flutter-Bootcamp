import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/student_info_controller.dart';

class StudentInfoView extends GetView<StudentInfoController> {
  const StudentInfoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StudentInfoView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'StudentInfoView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
