import 'dart:convert';

import 'package:http/http.dart' as shuvo;

void main() {
  getRequestTest();
}

void getRequestTest() async {
  Uri url = Uri.https("ifconfig.co", "json");
  Future<shuvo.Response> apiResponse = shuvo.get(url);
  shuvo.Response response = await apiResponse;
  print(response.body);

  Map<String, dynamic> json = jsonDecode(response.body);
  print(json["user_agent"]["version"]);
}
