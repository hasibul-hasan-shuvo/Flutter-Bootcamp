import 'dart:convert';

import 'package:http/http.dart' as shuvo;

void main() {
  putRequestTest();
}

void getRequestTest() async {
  Uri url = Uri.https("ifconfig.co", "json");
  shuvo.Response response = await shuvo.get(url);
  print(response.body);

  Map<String, dynamic> json = jsonDecode(response.body);
  print(json["user_agent"]["version"]);
}

void postRequestTest() async {
  Map<String, dynamic> userData = {
    "name": "Shuvo",
    "job": "Software Engineer",
  };

  Uri url = Uri.https("reqres.in", "api/users");
  shuvo.Response response = await shuvo.post(
    url,
    body: userData,
  );
  print("StatusCode: ${response.statusCode}, \n\nData: ${response.body}");
  Map<String, dynamic> json = jsonDecode(response.body);
}

void putRequestTest() async {
  Map<String, dynamic> userData = {
    "name": "Shuvo",
    "job": "Software Engineer",
  };

  Uri url = Uri.https("reqres.in", "api/users/2");
  shuvo.Response response = await shuvo.put(
    url,
    body: userData,
  );
  print("StatusCode: ${response.statusCode}, \n\nData: ${response.body}");
  Map<String, dynamic> json = jsonDecode(response.body);
}

void getUserList() async {
  Uri url = Uri.https("reqres.in", "api/users");
  shuvo.Response response = await shuvo.get(url);
  print(response.statusCode);

  Map<String, dynamic> json = jsonDecode(response.body);
  print("User Data: $json");
}
