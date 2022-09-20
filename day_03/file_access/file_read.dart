import 'dart:io';

void main() {
  print("Your data:");

  File file = File('bootcamp_data.txt');

  file.readAsLines().then((List<String> dataList) {
    for (String data in dataList) {
      print(data);
    }
  });
}
