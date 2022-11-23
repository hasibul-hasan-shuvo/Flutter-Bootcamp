class CourseInfoUiModel {
  final String courseName;
  final String organizationName;

  CourseInfoUiModel({
    required this.courseName,
    required this.organizationName,
  });

  CourseInfoUiModel.empty([this.courseName = "", this.organizationName = ""]);
}
