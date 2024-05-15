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

// Class _HomeState adalah State dari Home, digunakan untuk mengatur state halaman
class _HomeState extends State<Home> {
  int _selected = -1;
  String _jenisKelamin = '-';

  @override
  Widget build(BuildContext context) {
    // Scaffold sebagai struktur dasar dari halaman dengan AppBar dan body
    return Scaffold(
      // AppBar sebagai baris atas halaman dengan judul
      appBar: AppBar(title: const Text('Percobaan Menggunakan Widget')),
      // Body halaman, menggunakan Padding dan Column untuk menata widget secara vertikal
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            // Text widget untuk menampilkan teks informatif "Jenis Kelamin :"
            const Text('Jenis Kelamin :'),
            RadioListTile(
              // Radio button untuk opsi "Laki-laki"
              value: 0, // Nilai yang mewakili opsi "Laki-laki"
              groupValue:
                  _selected, // Nilai dari radio button yang sedang dipilih
              title: const Text(
                  'Laki-laki'), // Teks yang akan ditampilkan di sebelah radio button
              activeColor: Colors
                  .green, // Warna yang akan ditampilkan ketika radio button dipilih
              secondary: const Icon(
                  Icons.person), // Ikon yang akan ditampilkan di sebelah teks
              onChanged: (int? value) {
                // Fungsi yang dipanggil ketika radio button diubah
                setState(() {
                  // Memperbarui status lokal
                  _selected =
                      value!; // Mengatur nilai yang dipilih sesuai dengan input pengguna
                  _jenisKelamin =
                      'Laki-laki'; // Mengatur jenis kelamin sesuai dengan pilihan "Laki-laki"
                });
              },
            ),

            // Radio button untuk opsi "Perempuan"
            RadioListTile(
              value: 1, // Nilai yang mewakili opsi "Perempuan"
              groupValue:
                  _selected, // Nilai dari radio button yang sedang dipilih
              title: const Text(
                  'Perempuan'), // Teks yang akan ditampilkan di sebelah radio button
              activeColor: Colors
                  .green, // Warna yang akan ditampilkan ketika radio button dipilih
              secondary: const Icon(
                  Icons.person), // Ikon yang akan ditampilkan di sebelah teks
              onChanged: (int? value) {
                // Fungsi yang dipanggil ketika radio button diubah
                setState(() {
                  // Memperbarui status lokal
                  _selected =
                      value!; // Mengatur nilai yang dipilih sesuai dengan input pengguna
                  _jenisKelamin =
                      'Perempuan'; // Mengatur jenis kelamin sesuai dengan pilihan "Perempuan"
                });
              },
            ),

            Text('Anda memilih : $_jenisKelamin'),
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
