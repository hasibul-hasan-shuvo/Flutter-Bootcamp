import 'package:day_21_networking_dio_getx/app/data/model/login_response.dart';
import 'package:day_21_networking_dio_getx/app/data/repository/auth_repository.dart';
import 'package:day_21_networking_dio_getx/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

class LoginController extends GetxController {
  final AuthRepository _repository = Get.find();
  final RxString errorController = RxString("");

  void loginUser(String email, String pass) {
    _repository.loginUser(email, pass).then(_handleLoginSuccessResponse,
        onError: (e) {
      Logger().e("Error from login controller: $e");
      errorController(e);
    });
  }

  void _handleLoginSuccessResponse(LoginResponse response) {
    print("Token: ${_repository.getToken()}");
    Get.offAllNamed(Routes.STUDENT_INFO);
  }
}
