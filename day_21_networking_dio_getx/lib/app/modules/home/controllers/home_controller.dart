import 'package:day_21_networking_dio_getx/app/data/model/course_info_response.dart';
import 'package:day_21_networking_dio_getx/app/data/repository/course_repository.dart';
import 'package:day_21_networking_dio_getx/app/modules/home/model/course_info_ui_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final CourseRepository _repository = Get.find();

  final Rx<CourseInfoUiModel> _courseUiDataController =
      Rx(CourseInfoUiModel.empty());
  CourseInfoUiModel get courseUiData => _courseUiDataController.value;

  void getCourseInfo() {
    _repository.getCourseInfo().then((CourseInfoResponse response) {
      _courseUiDataController(
        CourseInfoUiModel(
          courseName: response.data?.name ?? "",
          organizationName: response.data?.organizer ?? "",
        ),
      );
    });
  }

  @override
  void onInit() {
    super.onInit();
    getCourseInfo();
  }
}
