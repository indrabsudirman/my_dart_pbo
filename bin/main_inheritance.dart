import 'package:my_dart_pbo/hero.dart';
import 'package:my_dart_pbo/monster.dart';
import 'package:my_dart_pbo/monster_kecoa.dart';
import 'package:my_dart_pbo/monster_ubur_ubur.dart';

void main(List<String> args) {
  Hero hero = Hero();
  Monster monster = Monster();
  MonsterUburUbur monsterUburUbur = MonsterUburUbur();

  //Dalam inheritance, bisa juga membuat list.
  List<Monster> monsters = [];
  monsters.add(MonsterUburUbur());
  monsters.add(MonsterKeCoa());

  //Trus di looping semua monster, untuk melakukan method yang sama.
  for (Monster m in monsters) {
    if (m is MonsterKeCoa) {
      print(m.eatHuman());
    }
  }

  hero.healthPoints = 5;
  monster.healthPoints = 50;
  monsterUburUbur.healthPoints = 10;

  print('');
  print('Hero health points: ' + hero.healthPoints.toString());
  print('Hero kill monster: ' + hero.killMonster());
  print('Monster health points: ${monster.healthPoints}');
  print('Monster eat human: ${monster.eatHuman()}');
  print('Monster Ubur ubur\'s health points: ${monsterUburUbur.healthPoints}');
  print('Monster Ubur ubur\'s has method: ${monsterUburUbur.eatHuman()}');
  print('Monster Ubur Ubur\'s method: ${monsterUburUbur.swim}');
}
