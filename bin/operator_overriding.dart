void main(List<String> args) {
  Hero a = Hero(12);
  Hero b = Hero(10);

  print(a % b);
}

class Hero {
  final int power;

  Hero(this.power);

  // operator + di Hero tidak ada default implementasi. Makanya harus diimplementasikan atau dioverride
  Hero operator +(var other) {
    if (other is Hero) {
      return Hero(power + other.power);
    } else if (other is int) {
      return Hero(power + other);
    }
    return this;
  }

  @override
  bool operator ==(var other) {
    if (other is Hero) {
      if (other.power == power) {
        return true;
      }
    }
    return false;
  }

  @override
  bool operator >(var other) {
    if (other is Hero) {
      if (power > other.power) {
        return true;
      }
    }
    return false;
  }

  int operator %(var other) {
    if (other is Hero) {
      if (power > other.power) {
        return power % other.power;
      }
    }
    return power;
  }
}
