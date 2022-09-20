import 'dart:collection';

void main() {
  HashMap<String, String> map = HashMap();

  map["flutter"] = "SDK";
  map["dart"] = "Language";
  // map["dart"] = "OOP";
  map["Dart"] = "Programming";
  // map.remove("dart");

  map.forEach((key, value) {
    print("Key: $key and Value: $value");
  });
}
