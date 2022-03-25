import 'dart:io';

void main(List<String> arguments) {
  PersegiPanjang persegiPanjang = PersegiPanjang();
  persegiPanjang.panjang = double.tryParse(stdin.readLineSync()!);
  persegiPanjang.lebar = double.parse(stdin.readLineSync()!);

  print('Luas Persegi Panjang: ${persegiPanjang.luas()}');
}

class PersegiPanjang {
  double? panjang;
  double? lebar;

  double luas() {
    return panjang! * lebar!;
  }
}
