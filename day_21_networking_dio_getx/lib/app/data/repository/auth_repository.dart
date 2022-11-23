import 'package:day_21_networking_dio_getx/app/data/model/login_response.dart';

abstract class AuthRepository {
  Future<LoginResponse> loginUser(String email, String pass);
  String getToken();
}
