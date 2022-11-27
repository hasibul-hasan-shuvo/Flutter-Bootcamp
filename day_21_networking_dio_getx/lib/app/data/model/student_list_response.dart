class StudentListResponse {
  StudentListResponse({
    this.status,
    this.message,
    this.data,
  });

  StudentListResponse.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(Student.fromJson(v));
      });
    }
  }
  bool? status;
  String? message;
  List<Student>? data;
}

class Student {
  Student({
    this.id,
    this.name,
    this.email,
    this.image,
    this.institution,
  });

  Student.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    image = json['image'];
    institution = json['institution'];
  }
  int? id;
  String? name;
  String? email;
  String? image;
  String? institution;
}
