import 'package:day_16/home/view/home_view.dart';
import 'package:day_16/routes/app_routes.dart';
import 'package:day_16/second_view.dart';
import 'package:get/get.dart';

abstract class AppPages {
  static const String INITIAL = Routes.HOME;

  static final List<GetPage<dynamic>> routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomeView(),
    ),
    GetPage(
      name: Routes.SECOND,
      page: () => SecondView(),
    ),
  ];
}
