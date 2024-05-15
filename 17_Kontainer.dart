import 'package:flutter/material.dart'; // Mengimpor pustaka flutter/material.dart.

void main() {
  runApp(
      const MyApp()); // Menjalankan aplikasi dengan widget MyApp sebagai root.
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Constructor untuk MyApp widget.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App', // Judul aplikasi.
      home: Home(), // Menetapkan halaman awal aplikasi.
      theme: ThemeData(
        // Konfigurasi tema aplikasi.
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.green, // Warna latar belakang app bar.
        ),
      ),
    );
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
              'Percobaan Menggunakan Widget')), // Membuat AppBar dengan judul "Percobaan Menggunakan Widget".
      body: Container(
        // Membuat kontainer untuk menempatkan teks.
        child: const Text(
          // Menambahkan teks "RPL Polbeng" dalam kontainer.
          'RPL Polbeng',
          style: TextStyle(
            // Mengatur gaya teks untuk teks "RPL Polbeng".
            fontSize: 40, // Ukuran teks.
            color: Colors.white, // Warna teks.
          ),
        ),
        color: Colors.green, // Memberikan warna latar belakang kontainer.
        width: 250,
        height: 100,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(10),
      ),
    );
  }
}

class Home extends StatefulWidget {
  // Widget Home yang menggunakan state.
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() =>
      _HomeState(); // Mengembalikan instance dari _HomeState.
}
