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

class Home extends StatelessWidget {
  const Home({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Membuat App Bar dengan judul.
      appBar: AppBar(title: const Text('Percobaan Menggunakan Widget')),
      // Mengatur warna latar belakang menjadi putih.
      backgroundColor: Colors.white,
      // Menggunakan LayoutBuilder untuk menentukan tata letak sesuai dengan lebar layar.
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 600) {
            // Jika lebar layar kurang dari 600, gunakan ListView.
            return ListView(
              children: _generateContainers(),
            );
          } else if (constraints.maxWidth < 900) {
            // Jika lebar layar kurang dari 900, gunakan GridView dengan 2 kolom.
            return GridView.count(
              crossAxisCount: 2,
              children: _generateContainers(),
            );
          } else {
            // Jika lebar layar lebih dari atau sama dengan 900, gunakan GridView dengan 6 kolom.
            return GridView.count(
              crossAxisCount: 6,
              children: _generateContainers(),
            );
          }
        },
      ),
    );
  }

  // Fungsi untuk menghasilkan daftar Container sesuai dengan jumlah yang diinginkan.
  List<Widget> _generateContainers() {
    return List<Widget>.generate(20, (index) {
      return Container(
        margin: const EdgeInsets.all(8), // Mengatur margin container.
        color: Colors.green, // Mengatur warna container.
        height: 200, // Mengatur tinggi container.
      );
    });
  }
}
