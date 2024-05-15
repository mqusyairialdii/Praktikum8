import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: Home(title: 'Home Page'),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.green,
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  // Konstruktor untuk menerima judul halaman.
  const Home({Key? key, required this.title}) : super(key: key);
  // Variabel untuk menyimpan judul halaman.
  final String title;

  @override
  Widget build(BuildContext context) {
    // Mendapatkan informasi ukuran layar dan orientasi.
    Size screenSize = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      // Membangun tata letak dasar aplikasi.
      appBar: AppBar(title: const Text('Percobaan Menggunakan Widget')),
      // Mengatur warna latar belakang layar.
      backgroundColor: Colors.blueGrey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Menampilkan lebar layar.
          Text(
            'Screen width: ${screenSize.width.toStringAsFixed(2)}',
            style: const TextStyle(color: Colors.white, fontSize: 18),
            textAlign: TextAlign.center,
          ),
          // Menampilkan orientasi layar.
          Text(
            'Orientation: $orientation',
            style: const TextStyle(color: Colors.white, fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
