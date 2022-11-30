import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  LoginView({Key? key}) : super(key: key) {
    _initializeListeners();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginView'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => controller.loginUser(
            "john@gmail.com",
            "1234",
          ),
          child: Text("Login"),
        ),
      ),
    );
  }

  void _initializeListeners() {
    controller.errorController.listen((errorMessage) {
      Logger().d("error from view");
      if (errorMessage.isNotEmpty) {
        ScaffoldMessenger.of(Get.context!).showSnackBar(
          SnackBar(
            content: Text(errorMessage),
          ),
        );
      }
    });
  }
}
