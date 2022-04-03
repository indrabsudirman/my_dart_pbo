import 'dart:async';

void main(List<String> args) async {
  //implementasi di main, seperti ini
  Users user = Users();
  //Using firebase storage
  UserManager userManager = UserManager(FirebaseStorage());
  //Save to firebase
  userManager.saveUserData(user, 10);
  //Load from firebase
  print(await userManager.getUserAge(user));
  //Using local storage
  userManager = UserManager(LocalStorage());
  //Save to local storage
  userManager.saveUserData(user, 10);
  //Load from firebase
  print(await userManager.getUserAge(user));
}

class Users {
  int age = 0;
}

//UserManager class is high level module, tidak tergantung pada low level module
class UserManager {
  final DataStorage dataStorage;

  UserManager(this.dataStorage);

  void saveUserData(Users user, int option) {
    dataStorage.saveData(user);
  }

  FutureOr<int> getUserAge(Users user) async {
    return await dataStorage.getUserAge(user);
  }
}

//Interface for data storage (Abstractions) tidak terganggu oleh low level module. Jadi ini tidak akan berubah-ubah.
abstract class DataStorage {
  void saveData(Users user);
  FutureOr<int> getUserAge(Users user);
}

//low level module, lebih teknis
class FirebaseStorage implements DataStorage {
  @override
  void saveData(Users user) {
    print('Connect to Firebase ...');
    print('Saving data to Firebase');
    print('Saving data done');
  }

  @override
  Future<int> getUserAge(Users user) async {
    print('get data from Firebase ...');
    await Future.delayed(Duration(seconds: 2));
    return 20;
    // await Future.delayed(Duration(seconds: 2), () {
    //   return 20;
    // });
    // return 20;
  }
}

//low level module, lebih teknis
class LocalStorage implements DataStorage {
  @override
  void saveData(Users user) {
    print('Connect to Local Storage ...');
    print('Saving data to Local Storage');
    print('Saving data done');
  }

  @override
  int getUserAge(Users user) {
    print('Syncronous data user');
    print('Calculate age');
    return 10;
  }
}
