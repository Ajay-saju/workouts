// Decoding Future

// Normal Function
String getMyName() => 'Ajay';

// Future Function
// various ways to declare a Future function

Future<String> getCustomerName() async {
  return 'ajay ';
}

Future<String> getCustomerAddress() async => '123 srt';

// Future Function without async keyword
Future<String> getCustomerNo() => Future.value('7034019778');

// Future with delay

Future<String> getCustomerDelay() =>
    Future.delayed(Duration(seconds: 5), () => '55-55');

Future<String> getCity() async {
  await Future.delayed(const Duration(seconds: 5));
  return 'New York';
}

// Error Handling or Exception handling in Future functions
// please use the try catch for error handling.
Future<String> getFullName(
    {required String firstName, required String lastName}) async {
  if (firstName.isEmpty || lastName.isEmpty) {
    throw FirstOrLastNameException();
  } else {
    return Future.value("$firstName $lastName");
  }
}

class FirstOrLastNameException implements Exception {}

// Future chaining
// calling multiple future methods.
Future<String> myName() async {
  return 'hi';
}

Future<String> getName1() =>
    Future.delayed(Duration(seconds: 3), () => 'Ajay saju');
Future<int> nameLength(String value) =>
    Future.delayed(Duration(seconds: 1), () => value.length);

// ----- Streams ----

Stream<int> getCount() async* {
  var count = 0;
  while (count < 10) {
    await Future.delayed(
      Duration(seconds: 1),
    );
    yield count;
    count++;
  }
}

Stream<String> getmyNmae() async* {
  await Future.delayed(
    Duration(seconds: 1),
  );
  yield 'Ajay s u';
  throw 'Some error';
}

// Explain asyncExpand function

Stream<String> getMyNames() async* {
  await Future.delayed(Duration(milliseconds: 300));
  yield 'Ajay';
  await Future.delayed(Duration(milliseconds: 300));
  yield 'Saju';
}

Stream<String> getCharecters(String values) async* {
  for (var i = 0; i < values.length; i++) {
    await Future.delayed(Duration(milliseconds: 100));
    yield values[i];
  }
}
