void main(List<String> args) {
  List<Person> person = [
    Person('Admin', 20),
    Person('User', 21),
    Person('User', 22),
    Person('User', 23),
    Person('Merchant', 24),
    Person('User', 24),
    Person('Admin', 25),
    Person('Admin', 38),
    Person('Merchant', 39),
    Person('Merchant', 32),
  ];

  print('Print Person List berdasarkan usia yang lebih muda');
  person.sort((a, b) => a.age.compareTo(b.age));
  person.forEach((element) {
    print(element.role + ' - ' + element.age.toString());
  });
  print('Print Person List berdasarkan usia yang lebih tua');
  person.sort((a, b) => b.age.compareTo(a.age));
  person.forEach((element) {
    print(element.role + ' - ' + element.age.toString());
  });
  print('Print Person List berdasarkan role A - Z');
  person.sort((a, b) => a.role.compareTo(b.role));
  person.forEach((element) {
    print(element.role + ' - ' + element.age.toString());
  });
  print('Print Person List berdasarkan role Z - A');
  person.sort((a, b) => b.role.compareTo(a.role));
  person.forEach((element) {
    print(element.role + ' - ' + element.age.toString());
  });
  print('Print Person List berdasarkan role A - Z dan usia yang lebih muda');
  person.sort((a, b) {
    //Jika role sama, maka akan
    if (a.role.compareTo(b.role) == 0) {
      return a.age
          .compareTo(b.age); //dibandingkan usia, yang lebih muda di atas
    } else {
      return a.role.compareTo(b.role);
    }
  });
  person.forEach((element) {
    print(element.role + ' - ' + element.age.toString());
  });
  print('Print Person List berdasarkan role A - Z dan usia yang lebih tua');
  person.sort((a, b) {
    //Jika role sama, maka akan
    if (a.role.compareTo(b.role) == 0) {
      return b.age.compareTo(a.age); //dibandingkan usia, yang lebih tua di atas
    } else {
      return a.role.compareTo(b.role);
    }
  });
  person.forEach((element) {
    print(element.role + ' - ' + element.age.toString());
  });

  //Kemdian gunakan cara ini untuk custom sort
  print('Print Custom sort Merchant - Admin - User');
  person.sort((a, b) {
    //Jika role tidak sama, maka akan
    if (a.getRoleWeight.compareTo(b.getRoleWeight) != 0) {
      return a.getRoleWeight.compareTo(
          b.getRoleWeight); //dikembalikan berdasarkan role yang lebih kecil
    } else {
      return a.age.compareTo(b.age);
    }
  });
  person.forEach((element) {
    print(element.role + ' - ' + element.age.toString());
  });
}

class Person {
  final String role;
  final int age;

  Person(this.role, this.age);

  //Jika ingin sortnya custom, misalnya Merchant pertama, kemudian Admin, lalu User
  //maka harus menggunakan method ini
  int get getRoleWeight {
    switch (role) {
      case 'Merchant':
        return 1;
      case 'Admin':
        return 2;
      default:
        return 3;
    }
  }
}
