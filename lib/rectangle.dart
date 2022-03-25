class PersegiPanjang {
  double? _panjang;
  double? _lebar;

  // Use Setter
  void setPanjang(double? value) {
    if (value == null || value <= 0) {
      throw ArgumentError('Panjang harus positif dan tidak boleh kosong');
    }
    _panjang = value;
  }

  // Use Property Set
  set lebar(double? value) {
    if (value == null || value <= 0) {
      throw ArgumentError('Lebar harus positif dan tidak boleh kosong');
    }
    _lebar = value;
  }

  // Use Getter
  double getPanjang() {
    return _panjang!;
  }

  // Use Property Get
  double get lebar {
    return _lebar!;
  }

  // Method hitung luas kurang tepat harusnya dijadikan field luas, karena persegi panjang punya luas bukan bisa hitung luasnya sendiri
  double hitungLuas() {
    return _panjang! * _lebar!;
  }

  //field luas
  double get luas => _panjang! * _lebar!;
}
