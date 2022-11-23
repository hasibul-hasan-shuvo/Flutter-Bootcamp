class CourseInfoResponse {
  CourseInfoResponse({
    this.status,
    this.message,
    this.data,
  });

  CourseInfoResponse.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? CourseData.fromJson(json['data']) : null;
  }
  bool? status;
  String? message;
  CourseData? data;
}

class CourseData {
  CourseData({
    this.name,
    this.organizer,
    this.instructors,
    this.image,
    this.duration,
    this.numberOfClass,
    this.classDuration,
    this.fee,
    this.url,
    this.classDays,
  });

  CourseData.fromJson(dynamic json) {
    name = json['name'];
    organizer = json['organizer'];
    instructors =
        json['instructors'] != null ? json['instructors'].cast<String>() : [];
    image = json['image'];
    duration = json['duration'];
    numberOfClass = json['number_of_class'];
    classDuration = json['class_duration'];
    fee = json['fee'];
    url = json['url'];
    classDays =
        json['class_days'] != null ? json['class_days'].cast<String>() : [];
  }
  String? name;
  String? organizer;
  List<String>? instructors;
  String? image;
  String? duration;
  int? numberOfClass;
  String? classDuration;
  String? fee;
  String? url;
  List<String>? classDays;
}
