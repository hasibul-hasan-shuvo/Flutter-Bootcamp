import 'dart:collection';

void main() {
  HashSet<int> hashSet = HashSet();
  hashSet.add(6);
  hashSet.add(5);
  hashSet.add(9);
  hashSet.add(5);
  hashSet.add(10);
  hashSet.add(6);

  for (var element in hashSet) {
    print(element);
  }
}
