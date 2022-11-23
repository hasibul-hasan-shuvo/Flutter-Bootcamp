import 'package:day_21_networking_dio_getx/app/core/model/login_arguments.dart';
import 'package:day_21_networking_dio_getx/app/data/model/login_response.dart';

abstract class AuthRemoteDataSource {
  Future<LoginResponse> loginUser(LoginArguments arguments);
}
