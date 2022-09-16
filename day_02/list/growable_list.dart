void main() {
  // List<int> dataList = List.empty(growable: true);
  List<String> dataList = [];

  dataList.add("Data 1");
  dataList.add("Data 2");
  dataList.add("Data 1");
  dataList.add("Data 3");
  dataList.add("Data 1");
  dataList.add("Data 4");
  dataList.add("Data 1");
  // dataList.insert(1, "Data 4");
  dataList.remove("Data 1");

  // dataList[0] = 1;

  dataList.forEach((element) {
    print(element);
  });
}
