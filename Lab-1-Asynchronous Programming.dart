import 'dart:async';

Future<void> printMap(Map<dynamic, dynamic> map) async {
  await Future.delayed(Duration(seconds: 1));
  map.forEach((key, value) {
    print("Key: $key, Value: $value");
  });
}

void main() async {
  Map<String, int> myMap = {'a': 1, 'b': 2, 'c': 3};
  await printMap(myMap);
  print("Map printed successfully!");
}

Future<List<T>> removeDuplicates<T>(List<T> list) {
  Completer<List<T>> completer = Completer();
  List<T> uniqueList = [];

  Future(() {
    for (T item in list) {
      if (!uniqueList.contains(item)) {
        uniqueList.add(item);
      }
    }
    completer.complete(uniqueList);
  });

  return completer.future;
}

void main() {
  List<int> numbersWithDuplicates = [1, 2, 3, 4, 2, 5, 6, 3, 7, 8, 1];
  print("List with duplicates: $numbersWithDuplicates");

  removeDuplicates(numbersWithDuplicates).then((uniqueNumbers) {
    print("List without duplicates: $uniqueNumbers");
  });
}
