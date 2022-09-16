void main() {
  List<String> dataList = ["Data 1", "Data 2", "Data 3", "Data 4"];

  for (dynamic text in dataList) {
    print(text);
  }

  dataList.forEach((data) {});
}
