import 'package:day_21_networking_dio_getx/app/core/model/login_arguments.dart';
import 'package:day_21_networking_dio_getx/app/data/model/login_response.dart';
import 'package:day_21_networking_dio_getx/app/data/remote/auth_local_data_source.dart';
import 'package:day_21_networking_dio_getx/app/data/remote/auth_remote_data_source.dart';
import 'package:day_21_networking_dio_getx/app/data/repository/auth_repository.dart';
import 'package:get/get.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _remoteDataSource = Get.find();
  final AuthLocalDataSource _localDataSource = Get.find();

  @override
  Future<LoginResponse> loginUser(String email, String pass) async {
    LoginArguments arguments = LoginArguments(
      userId: email,
      password: pass,
    );
    LoginResponse response = await _remoteDataSource.loginUser(arguments);

    if (response.token != null) {
      _localDataSource.saveToken(response.token!);
    }

    return response;
  }

  @override
  String getToken() {
    return _localDataSource.getToken();
  }
}
