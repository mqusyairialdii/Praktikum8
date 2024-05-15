// Import library flutter/material.dart untuk mengakses widget Flutter.
import 'package:flutter/material.dart';

// Fungsi main() sebagai titik masuk aplikasi.
void main() {
  // Menjalankan aplikasi dengan widget MyApp sebagai root.
  runApp(MyApp());
}

// Kelas MyApp merupakan stateless widget yang membangun struktur aplikasi.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Mengembalikan MaterialApp sebagai root widget aplikasi.
    return MaterialApp(
      // Judul aplikasi.
      title: 'My App',
      // Halaman utama aplikasi.
      home: Home(title: 'Home Page'),
      // Konfigurasi tema aplikasi.
      theme: ThemeData(
        // Konfigurasi tema app bar.
        appBarTheme: AppBarTheme(
          // Warna latar belakang app bar.
          backgroundColor: Colors.green,
        ),
      ),
    );
  }
}

// Kelas Home merupakan stateless widget yang membangun halaman utama aplikasi.
class Home extends StatelessWidget {
  const Home({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    // Mengembalikan struktur halaman menggunakan Scaffold widget.
    return Scaffold(
      // App bar pada halaman.
      appBar: AppBar(title: const Text('Percobaan Menggunakan Widget')),
      // Area aman untuk menempatkan konten.
      body: SafeArea(
        child: Column(
          children: [
            // Baris pertama dengan widget Expanded dan Flexible.
            Row(
              children: const [
                ExpandedWidget(), // Widget Expanded yang memenuhi sisa ruang dalam baris.
                FlexibleWidget(), // Widget Flexible yang dapat menyesuaikan ukurannya.
              ],
            ),
            // Baris kedua dengan dua widget Expanded.
            Row(
              children: const [
                ExpandedWidget(), // Widget Expanded pertama.
                ExpandedWidget(), // Widget Expanded kedua.
              ],
            ),
            // Baris ketiga dengan dua widget Flexible.
            Row(
              children: const [
                FlexibleWidget(), // Widget Flexible pertama.
                FlexibleWidget(), // Widget Flexible kedua.
              ],
            ),
            // Baris keempat dengan satu Flexible dan satu Expanded.
            Row(
              children: const [
                FlexibleWidget(), // Widget Flexible.
                ExpandedWidget(), // Widget Expanded.
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Kelas ExpandedWidget merupakan stateless widget yang membangun widget Expanded.
class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // Mengembalikan widget Expanded dengan konten berupa teks dan dekorasi.
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.teal, // Warna latar belakang kontainer.
          border: Border.all(color: Colors.white), // Garis tepi kontainer.
        ),
        child: const Padding(
          padding: EdgeInsets.all(16.0), // Padding dalam kontainer.
          child: Text(
            'Expanded', // Teks di dalam kontainer.
            style: TextStyle(
              color: Colors.white, // Warna teks.
              fontSize: 24, // Ukuran teks.
            ),
          ),
        ),
      ),
    );
  }
}

// Kelas FlexibleWidget merupakan stateless widget yang membangun widget Flexible.
class FlexibleWidget extends StatelessWidget {
  const FlexibleWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // Mengembalikan widget Flexible dengan konten berupa teks dan dekorasi.
    return Flexible(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.tealAccent, // Warna latar belakang kontainer.
          border: Border.all(color: Colors.white), // Garis tepi kontainer.
        ),
        child: const Padding(
          padding: EdgeInsets.all(16.0), // Padding dalam kontainer.
          child: Text(
            'Flexible', // Teks di dalam kontainer.
            style: TextStyle(
              color: Colors.teal, // Warna teks.
              fontSize: 24, // Ukuran teks.
            ),
          ),
        ),
      ),
    );
  }
}
