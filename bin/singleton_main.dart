import 'singleton_service_demo.dart';
import 'singleton_user_demo.dart';

void main(List<String> args) async {
  ServicesSingleton services1 = ServicesSingleton();
  ServicesSingleton services2 = ServicesSingleton();
  ServicesSingleton services3 = ServicesSingleton();

  if (services1 == services2 && services2 == services3) {
    print('services1 and services2 are the same instance');
  } else {
    print('services1 and services2 are different instances');
  }
}
