import 'package:day_21_networking_dio_getx/app/data/local/preference/preference_manager.dart';
import 'package:day_21_networking_dio_getx/app/data/local/preference/preference_manager_impl.dart';
import 'package:day_21_networking_dio_getx/app/data/remote/auth_local_data_source.dart';
import 'package:day_21_networking_dio_getx/app/data/remote/auth_local_data_source_impl.dart';
import 'package:day_21_networking_dio_getx/app/data/remote/auth_remote_data_source.dart';
import 'package:day_21_networking_dio_getx/app/data/remote/auth_remote_data_source_impl.dart';
import 'package:day_21_networking_dio_getx/app/data/remote/course_remote_data_source.dart';
import 'package:day_21_networking_dio_getx/app/data/remote/course_remote_data_source_impl.dart';
import 'package:day_21_networking_dio_getx/app/data/remote/student_remote_data_source.dart';
import 'package:day_21_networking_dio_getx/app/data/remote/student_remote_data_source_impl.dart';
import 'package:day_21_networking_dio_getx/app/data/repository/auth_repository.dart';
import 'package:day_21_networking_dio_getx/app/data/repository/auth_repository_impl.dart';
import 'package:day_21_networking_dio_getx/app/data/repository/course_repository.dart';
import 'package:day_21_networking_dio_getx/app/data/repository/course_repository_impl.dart';
import 'package:day_21_networking_dio_getx/app/data/repository/student_repository.dart';
import 'package:day_21_networking_dio_getx/app/data/repository/student_repository_impl.dart';
import 'package:get/get.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CourseRepository>(
      () => CourseRepositoryImpl(),
    );
    Get.lazyPut<AuthRepository>(
      () => AuthRepositoryImpl(),
    );
    Get.lazyPut<CourseRemoteDataSource>(
      () => CourseRemoteDataSourceImpl(),
    );
    Get.lazyPut<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl(),
    );
    Get.lazyPut<AuthLocalDataSource>(
      () => AuthLocalDataSourceImpl(),
    );
    Get.lazyPut<PreferenceManager>(
      () => PreferenceManagerImpl(),
    );
    Get.lazyPut<StudentRemoteDataSource>(
      () => StudentRemoteDataSourceIml(),
      fenix: true,
    );
    Get.lazyPut<StudentRepository>(
      () => StudentRepositoryImpl(),
      fenix: true,
    );
  }
}
