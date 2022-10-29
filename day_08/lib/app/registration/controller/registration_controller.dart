import 'package:flutter/material.dart';

class RegistrationController {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String? isNameValid(String? text) {
    if (text == null || text.isEmpty) {
      return "Name is empty";
    }

    return null;
  }

  String? isEmailValid(String? text) {
    if (text == null || text.isEmpty) {
      return "Email is empty";
    }

    return null;
  }

  String? isPasswordValid(String? text) {
    if (text == null || text.isEmpty) {
      return "Password is empty";
    }

    return null;
  }
}
