void main() {
  Set<int> set = Set();
  set.add(6);
  set.add(5);
  set.add(9);
  set.add(5);
  set.add(10);
  set.add(6);
  // set.remove(5);

  for (var element in set) {
    print(element);
  }
}
