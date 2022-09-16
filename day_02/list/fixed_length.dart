void main() {
  List<int> dataList = List.filled(7, 0);

  // 0 0 0 0 0 0 0

  dataList[1] = 13;

  // for (int index = 0; index < dataList.length; index++) {
  //   print(dataList[index]);
  // }

  // dataList.forEach((element) { });

  dataList.forEach((element) {
    print(element);
  });
}
