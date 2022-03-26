import 'package:my_dart_pbo/ignore_parameter_underscore.dart';

void main(List<String> args) {
  //Object person need 2 parameter, second parameter must Function and is optional.
  var person = Person('David',
      // tanda _ artinya akan diabaikan, dan tidak akan makan memory. Lebih effsien jika tidak perlu menggunakan paramater name.
      doingHobby: (_) => print(
          'His hobby is coding')); //Bisa dengan cara ini, buat Function di constructor.

  person.takeARest();
}

// Bisa dengan cara ini, bikin function, nanti dimasukkan di second parameter Person.
// void davidHobby(String name) {
//   print('$name is cycling');
// }
