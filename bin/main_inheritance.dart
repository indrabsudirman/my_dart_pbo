import 'package:my_dart_pbo/hero.dart';
import 'package:my_dart_pbo/ability_drink_mixin.dart';
import 'package:my_dart_pbo/knight.dart';
import 'package:my_dart_pbo/monster.dart';
import 'package:my_dart_pbo/monster_kecoa.dart';
import 'package:my_dart_pbo/monster_ubur_ubur.dart';
import 'package:my_dart_pbo/monster_ucoa.dart';

void main(List<String> args) {
  Hero hero = Hero();
  Monster monsterKecoa = MonsterKeCoa();
  MonsterUburUbur monsterUburUbur = MonsterUburUbur();

  //Dalam inheritance, bisa juga membuat list.
  List<Monster> monsters = [];
  monsters.add(MonsterUburUbur());
  monsters.add(MonsterKeCoa());
  monsters.add(MonsterUcoa());

  //Trus di looping semua monster, untuk melakukan method yang sama.
  for (Monster m in monsters) {
    if (m is AbilityDrinkMixin) {
      print((m as AbilityDrinkMixin).drink());
    }
    // print(m.eatHuman());
  }

  hero.healthPoints = 5;
  monsterKecoa.healthPoints = 50;
  monsterUburUbur.healthPoints = 10;

  print('');
  print('Hero health points: ' + hero.healthPoints.toString());
  print('Hero kill monster: ' + hero.killMonster());
  print('Monster health points: ${monsterKecoa.healthPoints}');
  print('Monster eat human: ${monsterKecoa.eatHuman()}');
  print('Monster Ubur ubur\'s health points: ${monsterUburUbur.healthPoints}');
  print('Monster Ubur ubur\'s has method: ${monsterUburUbur.eatHuman()}');
  print('Monster Ubur Ubur\'s method: ${monsterUburUbur.swim}');
  print('');

  Knight knight = Knight();
  print('Hero are ${knight.drink()}');
}
