//constanta bisa digunakan di top level, disini.
const phi = 3.14;
void main(List<String> args) {
  final int x = 4;
  final int y = 4;

  print('final x and y are : ${identical(x, y)}'); // true
  print(phi); // 3.14

// Merujuk pada object yang sama, karena pakai const.
  var p = const ConstClass(number: 4);
  var q = const ConstClass(number: 4);
  print('conts p and q are : ${identical(p, q)}'); // true

  // Merujuk pada object yang beda, karena tidak pakai const.
  var i = ConstClass(number: 4);
  var b = ConstClass(number: 4);
  print('var i and b are : ${identical(i, b)}'); // fasle
}

class RegularClass {
  final int? number;

  RegularClass({this.number});
}

class ConstClass {
  final int? number;
  //harus ditambahin keyword const di constructor, jika ingin dijadikan class constanta.
  const ConstClass({this.number});
}
