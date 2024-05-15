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
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.green, // Mengatur warna latar belakang AppBar
        ),
      ),
    );
  }
}

class _HomeState extends State<Home> {
  // Variabel untuk menyimpan nilai slider
  double _sliderValue = 0.0;
  
  @override
  Widget build(BuildContext context) {
    // Membangun tampilan halaman menggunakan Scaffold sebagai kerangka utama
    return Scaffold(
      // Menambahkan AppBar dengan judul "Percobaan Menggunakan Widget"
      appBar: AppBar(title: const Text('Percobaan Menggunakan Widget')),
      // Bagian utama dari halaman, diisi dengan Column untuk menata widget secara vertikal
      body: Padding(
        // Menambahkan jarak sekitar Column
        padding: const EdgeInsets.all(8.0),
        // Column berisi teks dan slider
        child: Column(
          children: <Widget>[
            // Menampilkan teks yang menampilkan nilai slider yang dibulatkan
            Text('Nilai aktif: ${_sliderValue.round()}'),
            // Slider untuk memilih nilai
            Slider(
              // Nilai minimum slider
              min: 0.0,
              // Nilai maksimum slider
              max: 100.0,
              // Nilai saat ini dari slider
              value: _sliderValue,
              activeColor: Colors.green,
              // Callback yang dipanggil saat nilai slider berubah
              onChanged: (double value) {
                setState(() {
                  // Mengubah nilai slider sesuai dengan yang dipilih pengguna
                  _sliderValue = value;
                });
              },
            )
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
