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
  monkye,
  
}

class Animal {
  final String name;
  final AnimalType animalType;

  Animal({required this.name, required this.animalType});
}

findAnimal() {
  final foo = Animal(name: 'lucie', animalType: AnimalType.dog);
  switch (foo.animalType) {
    case AnimalType.dog:
      print('Thats a dog');
      break;
    case AnimalType.cat:
      print('Thats a cat');
      break;
    case AnimalType.rabbit:
      print('Thats a Rabbit');
      break;
    case AnimalType.monkye:
      print('thats a monkye');
      break;
  }
}

enum PaymentStatus {
  pending,
  faild,
  complete,
}

class Payment {
  final String paymentId;
  final String amount;
  final PaymentStatus status;
  Payment(
      {required this.paymentId, required this.amount, required this.status});
}

printPaymentStatus({required Payment payment}) {
  // ignore: unused_local_variable
  String statusText;
  switch (payment.status) {
    case PaymentStatus.complete:
      statusText = 'Payment Complete';
      break;
    case PaymentStatus.faild:
      statusText = 'Payment Failed';
      break;
    case PaymentStatus.pending:
      statusText = 'Payment pending';
      break;
  }
  print("Amount : ${payment.amount}");
  print("Payment Id  : ${payment.paymentId}");
  print("Payment Status : ${payment.status}");
}

// ------Inheritance and Subclassing -------

abstract class Shape {
  double shape();
  void dispaly();
}

class Circle extends Shape {
  double radius;
  Circle(this.radius);

  @override
  double shape() {
    return 3.14 * radius;
  }

  @override
  void dispaly() {
    print('Circle Radius: $radius');
  }
}
// --------Factory constructor in dart-----

// creating a new class
class Person {
  final String name;
  final double age;

  Person(this.name, this.age);
  factory Person.fromBirtYear(String name, int birthYear) {
    int currentYear = DateTime.now().year;
    double age = currentYear - birthYear.toDouble();
    return Person(name, age);
  }
}

class Currency {
  final String code;
  final String symbol;

  Currency(this.code, this.symbol);

  factory Currency.fromCode(String code) {
    switch (code) {
      case 'USD':
        return Currency(code, "\$");
      case 'EUR':
        return Currency(code, "\€");
      case 'GBP':
        return Currency(code, "\£");
      default:
        return Currency(code, '');
    }
  }
}
// ---- Custome Oparators ----

// ---- Extentions ----
// we can add extensions to a defined class 

class Dog {
  final String name;

  Dog(this.name);
}

extension Run on Dog {
  void display() {
    print('$name is runnig');
  }
}

// ---- Streams ----
// asincronous pipe of data
Stream<String> getName() {
  return Stream.value('ajayayayayayayayay');
}

Stream<String> pipeline() {
  return Stream.periodic(Duration(seconds: 1), (value) {
    return 'Ajay';
  });
}

class GetStream {
  
  display() async {
    await for (final value in pipeline()) {
      print(value);
    }
    print('Stream completed');
  }
}

// -----Genarator Functions-------
// Its a special type of functions uses the "yield" keyword to produce a sequence of values lazily,
Iterable<int> countdown(int value) sync* {
  for (int i = value; i >= 0; i--) {
    yield i;
  }
}
//--------Generics------
// To avoid re-writing the similar code

class Pair<A,B>{
  final String name;
  final int age;

  Pair(this.name, this.age);
}