int findHighest(List<int> numbers) {
  if (numbers.isEmpty) {
    throw ArgumentError("The list is empty");
  }

  int highest = numbers[0];
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > highest) {
      highest = numbers[i];
    }
  }
  return highest;
}

void main() {
  List<int> numbers = [5, 12, 9, 3, 20, 7];
  print("Highest number: ${findHighest(numbers)}");
}

void printMap(Map<dynamic, dynamic> map) {
  map.forEach((key, value) {
    print("Key: $key, Value: $value");
  });
}

void main() {
  Map<String, int> myMap = {'a': 1, 'b': 2, 'c': 3};
  printMap(myMap);
}

List<T> removeDuplicates<T>(List<T> list) {
  List<T> uniqueList = [];
  for (T item in list) {
    if (!uniqueList.contains(item)) {
      uniqueList.add(item);
    }
  }
  return uniqueList;
}

void main() {
  List<int> numbersWithDuplicates = [1, 2, 3, 4, 2, 5, 6, 3, 7, 8, 1];
  print("List with duplicates: $numbersWithDuplicates");
  List<int> uniqueNumbers = removeDuplicates(numbersWithDuplicates);
  print("List without duplicates: $uniqueNumbers");
}
