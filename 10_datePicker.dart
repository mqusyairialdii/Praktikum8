import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// MyApp adalah widget utama yang berisi konfigurasi utama aplikasi.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App', // Judul aplikasi
      home: Home(), // Menetapkan Home() sebagai halaman awal aplikasi
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.green, // Mengatur warna latar belakang AppBar menjadi hijau
        ),
        // Menyesuaikan tema kalender
        datePickerTheme: DatePickerThemeData(
          // Mengatur latar belakang kalender menjadi hijau
          backgroundColor: Colors.green,
        ),
      ),
    );
  }
}

// _HomeState adalah state dari widget Home.
class _HomeState extends State<Home> {
  DateTime _date = DateTime.now(); // Variabel untuk menyimpan tanggal yang dipilih

  // Method untuk menampilkan date picker dan menangani pemilihan tanggal
  Future<void> selectDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
      context: context,
      initialDate: _date, // Tanggal awal untuk date picker
      firstDate: DateTime(1900), // Tanggal pertama yang dapat dipilih
      lastDate: DateTime(2100), // Tanggal terakhir yang dapat dipilih
    );
    if (selected != null && selected != _date) { // Memeriksa apakah tanggal dipilih tidak null dan berbeda dengan 
                                                  //tanggal yang sebelumnya dipilih
      setState(() {
        _date = selected; // Memperbarui tanggal yang dipilih dengan tanggal yang baru
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Percobaan Menggunakan Widget')), // Menampilkan app bar dengan judul
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Text('Tanggal yang Anda pilih: ${_date.toString().split(' ')[0]}'), // Menampilkan tanggal yang dipilih
              ElevatedButton(
                onPressed: () {
                  selectDate(context); // Memanggil method untuk menampilkan date picker saat tombol ditekan
                },
                child: const Text('Pilih Tanggal'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Home adalah widget yang menampilkan halaman utama aplikasi.
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}
