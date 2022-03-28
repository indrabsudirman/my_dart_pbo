import 'package:my_dart_pbo/generic_type_secure_box.dart';

void main(List<String> args) {
  var box = SecureBox<Person>(Person('Indra'), '1234');

  print(box.getData('1234').name);
}

class Person {
  final String name;

  Person(this.name);
}
