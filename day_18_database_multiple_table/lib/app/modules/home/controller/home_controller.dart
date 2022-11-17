import 'package:day_18_database_multiple_table/app/data/repository/student_repository.dart';
import 'package:day_18_database_multiple_table/app/data/repository/student_repository_impl.dart';
import 'package:day_18_database_multiple_table/app/modules/home/model/student_list_item_ui_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final StudentRepository _repository = StudentRepositoryImpl();

  final RxList<StudentListItemUiModel> _studentListController = RxList([]);
  List<StudentListItemUiModel> get studentList => _studentListController;

  void getStudentList() async {
    List<StudentListItemUiModel> list = await _repository.getStudentList();
    _studentListController(list);
  }

  @override
  void onInit() {
    super.onInit();
    getStudentList();
  }
}
