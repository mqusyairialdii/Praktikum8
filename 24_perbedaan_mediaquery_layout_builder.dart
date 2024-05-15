// Import library untuk menggunakan Flutter UI framework.
import 'package:flutter/material.dart';

// Fungsi utama yang akan dijalankan pertama kali saat aplikasi dijalankan.
void main() {
  // Menjalankan aplikasi Flutter dengan widget MyApp sebagai root.
  runApp(MyApp());
}

// Kelas MyApp adalah StatelessWidget yang merupakan root dari aplikasi.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Mengembalikan MaterialApp yang merupakan struktur dasar aplikasi Flutter.
    return MaterialApp(
      // Judul aplikasi.
      title: 'My App',
      // Halaman utama aplikasi.
      home: Home(title: 'Home Page'),
      // Tema aplikasi dengan mengatur warna AppBar menjadi hijau.
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.green,
        ),
      ),
    );
  }
}

// Kelas Home adalah StatelessWidget yang menampilkan halaman utama.
class Home extends StatelessWidget {
  // Konstruktor untuk menginisialisasi judul halaman.
  const Home({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    // Mendapatkan ukuran layar perangkat.
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      // AppBar untuk menampilkan judul halaman.
      appBar: AppBar(title: const Text('Percobaan Menggunakan Widget')),
      // Warna latar belakang halaman.
      backgroundColor: Colors.blueGrey,
      // Tubuh halaman menggunakan Row untuk menampilkan dua bagian sejajar.
      body: Row(
        children: [
          // Bagian pertama menggunakan Expanded widget untuk memanfaatkan ruang yang tersedia.
          Expanded(
            child: LayoutBuilder(
              // LayoutBuilder untuk membangun widget berdasarkan batasan ukuran.
              builder: (BuildContext context, BoxConstraints constraints) {
                return Column(
                  // Menyusun widget secara vertikal ke tengah.
                  mainAxisAlignment: MainAxisAlignment.center,
                  // Menyusun widget secara horizontal merata.
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Menampilkan lebar layar dari MediaQuery.
                    Text(
                      'MediaQuery: ${screenSize.width.toStringAsFixed(2)}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    // Menampilkan lebar maksimum dari LayoutBuilder.
                    Text(
                      'LayoutBuilder: ${constraints.maxWidth}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                );
              },
            ),
          ),
          // Bagian kedua menggunakan Expanded widget dan memiliki fleksibilitas 3.
          Expanded(
            flex: 3,
            child: LayoutBuilder(
              // LayoutBuilder untuk membangun widget berdasarkan batasan ukuran.
              builder: (BuildContext context, BoxConstraints constraints) {
                return Container(
                  // Warna latar belakang container menjadi putih.
                  color: Colors.white,
                  child: Column(
                    // Menyusun widget secara vertikal ke tengah.
                    mainAxisAlignment: MainAxisAlignment.center,
                    // Menyusun widget secara horizontal merata.
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Menampilkan lebar layar dari MediaQuery dengan warna berbeda.
                      Text(
                        'MediaQuery: ${screenSize.width.toStringAsFixed(2)}',
                        style: const TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      // Menampilkan lebar maksimum dari LayoutBuilder dengan warna berbeda.
                      Text(
                        'LayoutBuilder: ${constraints.maxWidth}',
                        style: const TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
