import 'package:day_21_networking_dio_getx/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Course Info'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _getCourseInfoView(),
          const SizedBox(height: 40.0),
          _getLoginButton(),
        ],
      ),
    );
  }

  Widget _getCourseInfoView() {
    return Obx(
      () => Column(
        children: [
          _getCourseNameView(),
          _getCourseOrganizerView(),
        ],
      ),
    );
  }

  Widget _getCourseNameView() {
    return Text(
      controller.courseUiData.courseName,
    );
  }

  Widget _getCourseOrganizerView() {
    return Text(
      controller.courseUiData.organizationName,
    );
  }

  Widget _getLoginButton() {
    return ElevatedButton(
      onPressed: () {
        Get.toNamed(Routes.LOGIN);
      },
      child: Text("Login page"),
    ).marginSymmetric(
      horizontal: 20.0,
    );
  }
}
