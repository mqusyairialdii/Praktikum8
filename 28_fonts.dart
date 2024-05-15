import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // Menjalankan aplikasi Flutter
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App', // Judul aplikasi
      home: Home(title: 'Percobaan Menggunakan Widget'), // Halaman utama aplikasi
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.green, // Warna latar belakang app bar
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Percobaan Menggunakan Widget')), // Judul app bar
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              height: 15.0,
            ),
            const Text(
              'PlayfairDisplay-Regular', // Teks dengan jenis huruf Playfair Display biasa
              style: TextStyle(
                fontFamily: 'Playfair Display', // Jenis huruf Playfair Display
                fontSize: 30, // Ukuran font
              ),
            ),
            Container(
              height: 15.0,
            ),
            const Text(
              'PlayfairDisplay-Italic', // Teks dengan jenis huruf Playfair Display miring
              style: TextStyle(
                fontFamily: 'Playfair Display', // Jenis huruf Playfair Display
                fontStyle: FontStyle.italic, // Gaya huruf miring
                fontSize: 30, // Ukuran font
              ),
            ),
            Container(
              height: 15.0,
            ),
            const Text(
              'PlayfairDisplay-Bold', // Teks dengan jenis huruf Playfair Display tebal
              style: TextStyle(
                fontFamily: 'Playfair Display', // Jenis huruf Playfair Display
                fontWeight: FontWeight.bold, // Ketebalan huruf tebal
                fontSize: 30, // Ukuran font
              ),
            ),
          ],
        ),
      ),
    );
  }
}
