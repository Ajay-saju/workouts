Stream<int> beatStream() async* {
  for (int i = 1; i <=10; i++) {
    print('Sending Boat no: ${i.toString()}');
    await Future.delayed(Duration(seconds: 2));
    yield i;
  } 

  // var boat =beatStream();
  // boat.listen((event) {
  //   print('Recived Boad: ${event.toString()}');
  //  });
}
