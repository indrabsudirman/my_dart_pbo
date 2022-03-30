void main(List<String> args) {
  List<int> list = [1, 2, 3];
  // Bisa juga seperti ini:
  List<int> myList = [];
  List<int> newMyList = [];

  list.add(4);
  list.add(5);

  list.sort(); //mengurutkan secara default, dari kecil ke besar
  list.sort((a, b) =>
      b.compareTo(a)); //mengurutkan secara descending (dari besar ke kecil)

  //Sebelumnya dibuat semua genap dulu
  list.removeWhere((element) => element.isOdd);
  //Fungsi every(), untuk mengecek apakah semua elemen dari list memenuhi kondisi tertentu,
  //return true jika semua elemen memenuhi kondisi tertentu
  if (list.every((element) => element % 2 == 0)) {
    print('Semua elemen list bilangan genap');
  }

  //Fungsi isEmpty(), untuk mengecek apakah list kosong atau tidak
  //Fungsi isNotEmpty(), untuk mengecek apakah list tidak kosong atau tidak

  for (var bilangan in list) {
    print('Value dari list: $bilangan');
  }

  //Bisa juga seperti ini:
  // list.forEach((bilangan) {
  //   print(bilangan);
  // });

  myList.add(6); //menambahkan nilai 6 ke list
  myList
      .addAll(list); //menambahkan nilai di list ke myList, harus tipe data list
  myList.insert(2, 15); //menambahkan nilai 15 di index ke 2
  myList.insertAll(
      0, [0, 11, 12, 13]); //menambahkan nilai 0, 11, 12, 13 di index ke 0
  //Untuk menghapus nilai di myList, gunakan remove
  myList.remove(15); //menghapus nilai 15 di myList
  myList.removeLast(); //menghapus nilai terakhir di myList
  myList.removeAt(0); //menghapus nilai di index ke 0 di myList
  myList.removeRange(0,
      2); //menghapus nilai di index ke 0 sampai index ke 2 di myList. Tapi index ke 2 tidak akan dihapus
  myList.removeWhere(
      (number) => number % 2 != 0); //menghapus nilai yang ganjil di myList

  //fungsi contains untuk mengecek apakah nilai ada di dalam list
  if (myList.contains(1)) {
    print('Nilai 1 ada di dalam myList');
  } else {
    print('Nilai 1 tidak ada di dalam myList');
  }

  // Bisa juga seperti ini:
  myList.forEach((bilangan) {
    print('Value dari myList adalah: $bilangan');
  });

  newMyList = list.sublist(0,
      2); //menambahkan nilai di dalam newMyList dari list index ke 0 sampai index ke 2
  for (var bilangan in newMyList) {
    print('Value dari list ke newMylist: $bilangan');
  }
}
