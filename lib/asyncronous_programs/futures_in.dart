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

Future getFullName(
    {required String firstName, required String lastName}) async {
      
    }
