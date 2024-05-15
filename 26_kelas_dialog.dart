import 'package:flutter/material.dart'; // Mengimpor pustaka flutter/material.dart.

void main() {
  runApp(
      const MyApp()); // Menjalankan aplikasi dengan widget MyApp sebagai root.
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Konstruktor untuk widget MyApp.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Saya', // Judul aplikasi.
      home: Home(), // Tetapkan halaman awal aplikasi.
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
  void buildAlertDialog(BuildContext context) {
    var alertDialog = AlertDialog(
      title: const Text('Informasi'),
      content: const Text('Flutter sungguh luar biasa'), // Pesan yang ditampilkan di dalam dialog alert.
      actions: <Widget>[
        ElevatedButton(
          child: const Text(
            'Ok',
            style: TextStyle(color: Colors.green), // Gaya untuk teks tombol 'Ok'.
          ),
          onPressed: () {
            Navigator.of(context).pop(); // Tutup dialog alert.
          },
        ),
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog; // Tampilkan dialog alert.
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mencoba Widget')), // Judul app bar.
      body: Center(
        child: ElevatedButton(
            child: const Text('Tampilkan Dialog'), // Teks yang ditampilkan pada tombol.
            onPressed: () {
              buildAlertDialog(context); // Fungsi untuk menampilkan dialog alert.
            }),
      ),
    );
  }
}

class Home extends StatefulWidget {
  // Widget Home yang menggunakan state.
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() =>
      _HomeState(); // Mengembalikan sebuah instance dari _HomeState.
}
