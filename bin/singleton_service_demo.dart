import 'singleton_user_demo.dart';

class Services {
  Future<User> getUserData() async {
    //assume there are user data from database and return it
    return User();
  }
}

class ServicesSingleton {
  static final ServicesSingleton _singleton = ServicesSingleton._internal();

  ServicesSingleton._internal();
  factory ServicesSingleton() {
    return _singleton;
  }
}

Future<User> getUserData() async {
  //assume there are user data from database and return it
  return User();
}
