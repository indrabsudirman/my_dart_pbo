import 'dart:io';
import 'package:my_dart_pbo/rectangle.dart';

void main(List<String> arguments) {
  PersegiPanjang persegiPanjang = PersegiPanjang();
  stdout.write('Nilai panjang: ');
  persegiPanjang.setPanjang(double.tryParse(stdin.readLineSync()!));
  stdout.write('Nilai lebar: ');
  persegiPanjang.lebar = double.tryParse(stdin.readLineSync()!);

  print('Panjang: ${persegiPanjang.getPanjang()}');
  print('Lebar: ${persegiPanjang.lebar}');
  print('Luas Persegi Panjang: ${persegiPanjang.luas}');
}
