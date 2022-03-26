class Hero {
  int? _healthPoints;

  int get healthPoints => _healthPoints!;
  set healthPoints(int value) {
    if (value <= 0) {
      throw ArgumentError('Health Points harus positif dan tidak boleh kosong');
    }
    _healthPoints = value;
  }

  String killMonster() => 'Take this monster...';
}
