import 'dart:io';

void main() {
  print("Enter your data:");

  String? data = stdin.readLineSync();

  File file = File('bootcamp_data.txt');

  // if (data != null) {
  //   file.writeAsString(data, mode: FileMode.append);
  // }

  // if (data != null) {
  //   file.writeAsStringSync("\n$data", mode: FileMode.append);
  // }

  IOSink sink = file.openWrite();

  sink.write(data);

  sink.close();
}
