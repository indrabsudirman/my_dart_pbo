class SecureBox<T> {
  final T _data;
  final String _pin;

  SecureBox(this._data, this._pin);

  T getData(String pin) => (_pin == pin) ? _data : throw Exception('Wrong pin');
}
