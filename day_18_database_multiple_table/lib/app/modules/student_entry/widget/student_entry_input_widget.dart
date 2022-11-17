import 'package:flutter/material.dart';

class StudentEntryInputWidget extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  const StudentEntryInputWidget({
    Key? key,
    this.controller,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: _getInputDecoration(),
    );
  }

  InputDecoration _getInputDecoration() {
    return InputDecoration(
      hintText: hintText,
    );
  }
}
