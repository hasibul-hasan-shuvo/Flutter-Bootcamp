import 'dart:convert';

import 'package:http/http.dart' as shuvo;

void main() {
  postRequestTest();
}

void getRequestTest() async {
  Uri url = Uri.https("ifconfig.co", "json");
  Future<shuvo.Response> apiResponse = shuvo.get(url);
  shuvo.Response response = await apiResponse;
  print(response.body);

  Map<String, dynamic> json = jsonDecode(response.body);
  print(json["user_agent"]["version"]);
}

void postRequestTest() async {
  Map<String, dynamic> userData = {
    "name": "Shuvo",
    "job": "Software Engineer",
  };

  Uri url = Uri.https("reqres.in", "/api/users");
  Future<shuvo.Response> apiResponse = shuvo.post(
    url,
    body: userData,
  );
  shuvo.Response response = await apiResponse;
  print("StatusCode: ${response.statusCode}, \n\nData: ${response.body}");
}
