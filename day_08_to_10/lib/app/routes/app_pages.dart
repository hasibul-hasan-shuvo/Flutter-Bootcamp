import 'package:day_08/app/home/view/home_page.dart';
import 'package:day_08/app/login/view/login_page.dart';
import 'package:day_08/app/registration/view/registration_page.dart';
import 'package:day_08/app/routes/app_routes.dart';

abstract class AppPages {
  static final routes = {
    '/login': (context) => LoginPage(),
    AppRoutes.REGISTRATION: (context) => RegistrationPage(),
    AppRoutes.HOME: (context) => HomePage(),
  };
}
