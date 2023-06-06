import 'package:dart_application_1/dart_application_1.dart';
import 'package:dart_application_1/dart_tutorials.dart';

void main() {
  final foo = Animal(name: "julie", animalType: AnimalType.cat);
  if (foo.animalType == AnimalType.cat) {
    print('foo is a cat');
  } else {
    print('foo is not a cat');
  }
}
