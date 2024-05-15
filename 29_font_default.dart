// Import library untuk menggunakan Flutter Material Design framework.
import 'package:flutter/material.dart';

// Fungsi utama yang dijalankan pertama kali saat aplikasi dijalankan.
void main() {
  // Menjalankan aplikasi Flutter dengan widget MyApp sebagai root widget.
  runApp(const MyApp());
}

// Kelas MyApp adalah StatelessWidget yang mendefinisikan tampilan aplikasi utama.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // Metode build() untuk membangun tampilan aplikasi.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App', // Judul aplikasi
      home:
          Home(title: 'Percobaan Menggunakan Widget'), // Halaman utama aplikasi
      theme: ThemeData(
        fontFamily: 'PlayfairDisplay', // Mengatur font utama aplikasi
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.green, // Warna latar belakang app bar
        ),
      ),
    );
  }
}

// Kelas Home adalah StatelessWidget yang mendefinisikan tampilan halaman utama aplikasi.
class Home extends StatelessWidget {
  const Home({Key? key, required this.title}) : super(key: key);

  // Properti title untuk menampung judul halaman.
  final String title;

  // Metode build() untuk membangun tampilan halaman utama aplikasi.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Percobaan Menggunakan Widget')), // Membuat app bar dengan judul
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              height: 15.0,
            ),
            const Text(
              'PlayfairDisplay-Regular', // Teks dengan gaya font regular
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            Container(
              height: 15.0,
            ),
            const Text(
              'PlayfairDisplay-Italic', // Teks dengan gaya font italic
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 30,
              ),
            ),
            Container(
              height: 15.0,
            ),
            const Text(
              'PlayfairDisplay-Bold', // Teks dengan gaya font bold
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
