import 'package:meta/meta.dart';

void main(List<String> args) {
  Person person;
  try {
    person = Person(name: null);
  } catch (e) {
    print(e);
  }
  print('Hello World');
}

class Person {
  final String? name;
  final int age;

  Person({@required this.name, this.age = 0}) {
    assert(name != null, 'name must not be null');
  }
}
