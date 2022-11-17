import 'package:day_18_database_multiple_table/app/modules/home/view/home_view.dart';
import 'package:day_18_database_multiple_table/app/modules/student_entry/view/student_entry_view.dart';
import 'package:day_18_database_multiple_table/app/modules/subject/subject_view.dart';
import 'package:day_18_database_multiple_table/routes/app_routes.dart';
import 'package:get/route_manager.dart';

class AppPages {
  static const INITIAL_ROUTE = AppRoutes.HOME;

  static final routes = [
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomeView(),
    ),
    GetPage(
      name: AppRoutes.STUDENT_ENTRY,
      page: () => StudentEntryView(),
    ),
    GetPage(
      name: AppRoutes.SUBJECT,
      page: () => const SubjectView(),
    ),
  ];
}
