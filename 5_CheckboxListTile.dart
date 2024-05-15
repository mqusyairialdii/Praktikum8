import 'package:flutter/material.dart';

void main() {
  // Menjalankan aplikasi dengan root widget MyApp
  runApp(const MyApp());
}

// Class MyApp adalah StatelessWidget yang merupakan root widget dari aplikasi
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // MaterialApp sebagai root widget untuk Material Design
    return MaterialApp(
      // Judul aplikasi
      title: 'My App',
      // Halaman awal aplikasi menggunakan class Home
      home: Home(),
    );
  }
}

// Class _HomeState adalah State dari Home, digunakan untuk mengatur state halaman
class _HomeState extends State<Home> {
  // Variabel boolean untuk menyimpan nilai checkbox
  bool _checkboxVal1 = false;
  bool _checkboxVal2 = false;
  bool _checkboxVal3 = false;
  bool _checkboxVal4 = false;
  List<String> list = [];
  // Deklarasi variabel text dengan tipe data String dan diinisialisasi dengan string kosong
  String text = '';
  // Fungsi showData untuk memformat data dari list menjadi string dan menyimpannya dalam variabel text
  void showData() {
    // Mengosongkan nilai text sebelum memulai proses formatting data baru
    text = '';
    // Perulangan untuk mengambil setiap elemen dalam list dan memformatnya menjadi string
    for (int i = 0; i < list.length; i++) {
      // Menambahkan elemen list ke dalam variabel text, dipisahkan oleh koma dan spasi
      text += '${list[i]}, ';
    }
  }

  @override
  Widget build(BuildContext context) {
    // Scaffold sebagai struktur dasar dari halaman dengan AppBar dan body
    return Scaffold(
      // AppBar sebagai baris atas halaman dengan judul
      appBar: AppBar(title: const Text('Percobaan Menggunakan Widget')),
      // Body halaman, menggunakan Padding dan Column untuk menata widget secara vertikal
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            // Text untuk menampilkan teks informatif
            const Text('Bahasa pemrograman yang dikuasai:'),

            //membuat checkboxlisttile
            CheckboxListTile(
              value: _checkboxVal1,
              title: const Text('Pyhton'),
              activeColor: Colors.greenAccent,
              secondary: const Icon(Icons.language),
              // onChanged digunakan untuk menangani perubahan nilai checkbox
              onChanged: (bool? value) {
                setState(() {
                  _checkboxVal1 = value!;
                });
                // Logika untuk menambah atau menghapus 'Python' dari list berdasarkan nilai checkbox
                if (_checkboxVal1 == true) {
                  list.add('Python');
                } else {
                  list.remove('Python');
                }
                // Memanggil fungsi showData setiap kali terjadi perubahan
                showData();
              },
            ),
            // CheckboxListTile untuk Javascript
            CheckboxListTile(
              value: _checkboxVal2,
              title: const Text('Javascript'),
              activeColor: Colors.greenAccent,
              secondary: const Icon(Icons.language),
              onChanged: (bool? value) {
                setState(() {
                  _checkboxVal2 = value!;
                });
                if (_checkboxVal2 == true) {
                  list.add('Javascript');
                } else {
                  list.remove('Javascript');
                }
                showData();
              },
            ),
            // CheckboxListTile untuk PHP
            CheckboxListTile(
              value: _checkboxVal3,
              title: const Text('PHP'),
              activeColor: Colors.greenAccent,
              secondary: const Icon(Icons.language),
              onChanged: (bool? value) {
                setState(() {
                  _checkboxVal3 = value!;
                });
                if (_checkboxVal3 == true) {
                  list.add('PHP');
                } else {
                  list.remove('PHP');
                }
                showData();
              },
            ),
            // CheckboxListTile untuk Java
            CheckboxListTile(
              value: _checkboxVal4,
              title: const Text('Java'),
              activeColor: Colors.greenAccent,
              secondary: const Icon(Icons.language),
              onChanged: (bool? value) {
                setState(() {
                  _checkboxVal4 = value!;
                });
                if (_checkboxVal4 == true) {
                  list.add('Java');
                } else {
                  list.remove('Java');
                }
                showData();
              },
            ),
            // Text untuk menampilkan data yang dipilih
            Text('Data : $text'),
          ],
        ),
      ),
    );
  }
}

// Class Home adalah StatefulWidget yang menampilkan halaman utama aplikasi
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}
