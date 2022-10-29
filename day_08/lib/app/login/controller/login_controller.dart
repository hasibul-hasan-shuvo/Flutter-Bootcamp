import 'package:flutter/material.dart';

class LoginController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isInputDataValid() {
    return emailController.text.isNotEmpty &&
        passwordController.text.isNotEmpty;
  }
}
