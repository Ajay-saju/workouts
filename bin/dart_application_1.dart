import 'package:dart_application_1/asyncronous_programs/futures_in.dart';
import 'package:dart_application_1/dart_application_1.dart';
import 'package:dart_application_1/dart_tutorials.dart';

void main() async {

  await for (var element in getmyNmae()) {
    print(element);
  }

  final result = await getmyNmae();
  print(result);
//  await for (var element in  getMyNames().asyncExpand((event) => getCharecters(event))) {
//     print(element);
//   }
//  final result=  getMyNames().asyncExpand((event) => getCharec  ters(event));
//  print(result);
  // var result=await getmyNmae();
  // print(result);
}
