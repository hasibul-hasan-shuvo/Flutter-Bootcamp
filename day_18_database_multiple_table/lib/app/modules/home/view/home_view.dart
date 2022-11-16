import 'package:day_18_database_multiple_table/app/modules/home/controller/home_controller.dart';
import 'package:day_18_database_multiple_table/app/modules/home/widget/item_student_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class HomeView extends StatelessWidget {
  final HomeController controller = HomeController();

  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _getBody(),
        floatingActionButton: _getAddStudentButton(),
      ),
    );
  }

  Widget _getBody() {
    return _getStudentListView();
  }

  Widget _getStudentListView() {
    return ListView.builder(
      itemCount: controller.studentList.length,
      itemBuilder: _getItemBuilder,
    );
  }

  Widget _getItemBuilder(BuildContext context, int index) {
    return ItemStudentListWidget(data: controller.studentList[index]);
  }

  Widget _getAddStudentButton() {
    return FloatingActionButton(
      onPressed: _onAddStudentButtonPressed,
      child: const Icon(Icons.add),
    );
  }

  void _onAddStudentButtonPressed() {
    Logger().d("Add student clicked");
  }
}
