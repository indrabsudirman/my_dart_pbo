void main(List<String> args) async {
  var p = Person();

  // Menunggu job 3 selesai dari ke job 4.
  // print('Job 1 done');
  // print('Job 2 done');
  // await p.getDataAsync();
  // print('${p.name} job 3 done');
  // print('Job 4 done');

  // Job 3 dilewatin, tapi akan ditampilkan terakhir karena pakai then dan di hapus await, tetap dikerjakan yang lain dulu.
  print('Job 1 done');
  print('Job 2 done');
  p.getDataAsync().then((_) {
    print('${p.name} job 3 done');
  });

  print('Job 4 done');
}

class Person {
  String name = 'Default Name';

  void getData() {
    name = 'Indra'; //Ceritanya, ambil data dari database, 3 detik
    print('Get data from database, done');
  }

  Future<void> getDataAsync() async {
    await Future.delayed(Duration(seconds: 4));
    name = 'Indra'; //Ceritanya, ambil data dari database, 3 detik
    print('Get data from database, done');
  }
}
