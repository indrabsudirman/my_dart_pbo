void main(List<String> args) {
  MonsterUcoa m = MonsterUcoa(status: UcoaStatus.dead)
    //Bisa diganti dengan Cascade Notation, karena m sudah di assign, berurutan.
    // m.move();
    // m.eat();
    //Menjadi seperti ini dengan Cascade Notation, titik koma diletakkan terakhir di eat().
    ..move()
    ..eat();
  //Tapi jika tidak berurutan, sudah diisi method lain. Bisa dengar menambahkan nama variablenya (m).
  print('status monster Ucoa ${m.status}');
  m
    ..move()
    ..eat();
}

enum UcoaStatus {
  normal,
  poisoned,
  dead,
}

class MonsterUcoa {
  final UcoaStatus status;

  MonsterUcoa({this.status = UcoaStatus.normal});

  void move() {
    switch (status) {
      case UcoaStatus.normal:
        print('MonsterUcoa is moving normal');
        break;
      case UcoaStatus.poisoned:
        print('MonsterUcoa poisoned');
        break;
      case UcoaStatus.dead:
        print('MonsterUcoa is dead');
        break;
      default:
    }
  }

  void eat() {
    print('MonsterUcoa is eating');
  }
}
