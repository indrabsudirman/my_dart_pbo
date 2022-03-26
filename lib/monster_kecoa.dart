import 'package:my_dart_pbo/flying_monster.dart';
import 'package:my_dart_pbo/monster.dart';

class MonsterKeCoa extends Monster implements FlyingMonster {
  @override
  String fly() => 'Monster Kecoa\'s flying';

  @override
  String move() => 'Monster Kecoa\'s moving';

  @override
  String eatHuman() => 'All Monster\'re eating human';
}
