import 'package:day_18_database_multiple_table/app/modules/home/controller/home_controller.dart';
import 'package:day_18_database_multiple_table/app/modules/home/widget/home_empty_widget.dart';
import 'package:day_18_database_multiple_table/app/modules/home/widget/item_student_list_widget.dart';
import 'package:day_18_database_multiple_table/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  final HomeController controller = HomeController();

  HomeView({Key? key}) : super(key: key) {
    controller.getStudentList();
  }

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
    return Obx(
      () => controller.studentList.isEmpty
          ? const HomeEmptyWidget()
          : _getStudentListView(),
    );
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

  void _onAddStudentButtonPressed() async {
    // AppDatabase database =
    //     await $FloorAppDatabase.databaseBuilder("app_database.db").build();
    // database.subjectDao.insertSubject(
    //   SubjectEntity(
    //       name: "Operating system", code: 12, credit: 5, registrationNo: "125"),
    // );

    //
    // Logger().d(
    //     (await database.subjectDao.getSubjectByRegistrationNo("124")).length);

    Get.toNamed(AppRoutes.STUDENT_ENTRY)?.then((isRefreshable) {
      if (isRefreshable == true) {
        controller.getStudentList();
      }
    });
  }
}
