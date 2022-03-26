import 'package:my_dart_pbo/character.dart';
import 'package:my_dart_pbo/ability_drink_mixin.dart';

/*Monster Abstract Class, karena seharusnya object monster tidak ada, 
 * yang ada hanya object monster kecoa dan monster ubur ubur, dll.
 */
abstract class Monster extends Character {
  String eatHuman() => 'Hmmmmm ... I\'m eating human';
  String move();
}
