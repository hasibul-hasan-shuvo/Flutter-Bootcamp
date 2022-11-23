import 'package:day_21_networking_dio_getx/app/data/local/preference/preference_manager.dart';
import 'package:day_21_networking_dio_getx/app/data/remote/auth_local_data_source.dart';
import 'package:get/get.dart';

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final PreferenceManager _preferenceManager = Get.find();
  @override
  void saveToken(String token) {
    return _preferenceManager.setString(PreferenceManager.keyToken, token);
  }

  @override
  String getToken() {
    return _preferenceManager.getString(PreferenceManager.keyToken);
  }
}
