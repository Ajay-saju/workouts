/*-------- List in Dart ---------- */

/*-------- Constructors ---------- */

emptyList() {
  List<int> emptyList = List<int>.empty();
  print(emptyList); // Output: []

  /*
In Dart, List.empty is a factory constructor that creates an empty list. 
It is a shorthand way to create a new list instance without any initial elements. */
}

filledList() {
  List<int> filledList = List.filled(10, 5);
  print(filledList);

/*
In Dart, List.filled is a factory constructor that creates a new list with a specified length and pre-filled with a given value.
 It allows you to create a list with a specific length where all elements have the same initial value.
*/
}

genaratedList() {
  List genaratedList = List.generate(7, (index) => index * 5);
  print(genaratedList);
}

weekDays() {
  List<String> weekdays = List<String>.generate(7, (index) {
    switch (index) {
      case 0:
        return 'Sunday';
      case 1:
        return 'Monday';
      case 2:
        return 'Tuesday';
      case 3:
        return 'Wednesday';
      case 4:
        return 'Thursday';
      case 5:
        return 'Friday';
      case 6:
        return 'Saturday';
      default:
        return '';
    }
  });

  print(weekdays);
}

/*-------- Methods ---------- */

/*-------- Enum ---------- */

enum AnimalType {
  dog,
  cat,
  rabbit,
}

class Animal {
  final String name;
  final AnimalType animalType;

  Animal({required this.name, required this.animalType});
}
