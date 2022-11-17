import 'package:day_18_database_multiple_table/app/modules/student_entry/controller/student_entry_controller.dart';
import 'package:day_18_database_multiple_table/app/modules/student_entry/model/student_ui_model.dart';
import 'package:day_18_database_multiple_table/app/modules/student_entry/widget/student_entry_input_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StudentEntryView extends StatelessWidget {
  final StudentEntryController controller = StudentEntryController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _registrationNoController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _getBody(),
      ),
    );
  }

  Widget _getBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _getNameInputField(),
        _getEmailInputField(),
        _getPhoneInputField(),
        _getRegistrationNoInputField(),
        const Spacer(),
        _getSaveButton(),
        const SizedBox(height: 30.0),
      ],
    ).marginSymmetric(
      horizontal: 20.0,
      vertical: 20.0,
    );
  }

  Widget _getNameInputField() {
    return StudentEntryInputWidget(
      controller: _nameController,
      hintText: "Name",
    );
  }

  Widget _getEmailInputField() {
    return StudentEntryInputWidget(
      controller: _emailController,
      hintText: "Email",
    );
  }

  Widget _getPhoneInputField() {
    return StudentEntryInputWidget(
      controller: _phoneController,
      hintText: "Phone",
    );
  }

  Widget _getRegistrationNoInputField() {
    return StudentEntryInputWidget(
      controller: _registrationNoController,
      hintText: "Registration no",
    );
  }

  Widget _getSaveButton() {
    return ElevatedButton(
      onPressed: _onSaveButtonPressed,
      child: Text("Save"),
    );
  }

  void _onSaveButtonPressed() {
    StudentUiModel data = StudentUiModel(
      name: _nameController.text,
      email: _emailController.text,
      phone: _phoneController.text,
      registrationNo: _registrationNoController.text,
    );

    controller.saveStudentData(data);
  }
}
