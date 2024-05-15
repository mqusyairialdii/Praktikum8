import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // Menjalankan aplikasi dengan widget MyApp sebagai root.
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Constructor untuk MyApp widget.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App', // Judul aplikasi.
      home: Home(), // Menetapkan halaman awal aplikasi.
      theme: ThemeData( // Konfigurasi tema aplikasi.
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.green, // Warna latar belakang app bar.
        ),
      ),
    );
  }
}

class _HomeState extends State<Home> { // State class untuk halaman Home.
  double _volume = 0.0; // Variabel untuk menyimpan volume.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( // App bar untuk halaman Home.
        title: const Text('Percobaan Menggunakan Widget'), // Judul app bar.
        actions: <Widget>[ // Tombol aksi di app bar.
          IconButton(
            icon: const Icon(Icons.search), // Icon untuk mencari.
            onPressed: () {}, // Fungsi yang dipanggil saat tombol ditekan.
          ),
          IconButton(
            icon: const Icon(Icons.settings), // Icon untuk pengaturan.
            onPressed: () {}, // Fungsi yang dipanggil saat tombol ditekan.
          )
        ],
      ),
      body: Center( // Konten utama halaman.
        child: Padding(
          padding: const EdgeInsets.all(8.0), // Padding untuk konten.
          child: Column( // Widget kolom untuk menyusun konten secara vertikal.
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.volume_up), // Icon untuk menaikkan volume.
                tooltip: 'Increase volume by 10', // Pesan tooltip.
                onPressed: () {
                  setState(() { // Memperbarui tampilan ketika volume dinaikkan.
                    _volume += 10;
                  });
                },
              ),
              Text('Volume : $_volume') // Teks yang menampilkan nilai volume.
            ],
          ),
        ),
      ),
    );
  }
}

class Home extends StatefulWidget { // Widget Home yang menggunakan state.
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState(); // Mengembalikan instance dari _HomeState.
}
