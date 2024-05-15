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
      // Tema yang digunakan dalam aplikasi
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.green, // Mengatur warna latar belakang AppBar menjadi hijau
        ),
        timePickerTheme: TimePickerThemeData(
          // Mengatur latar belakang kalender menjadi hijau
          backgroundColor: Colors.green,
        ),
      ),
    );
  }
}

// State dari widget Home yang dapat berubah
class _HomeState extends State<Home> {
  TimeOfDay _time = TimeOfDay.now();

  // Metode untuk memilih waktu menggunakan TimePicker
  Future<void> selectTime(BuildContext context) async {
    final TimeOfDay? selected = await showTimePicker(
      context: context,
      initialTime: _time,
    );
    if (selected != null && selected != _time) {
      // Jika waktu dipilih, perbarui state dengan waktu yang dipilih
      setState(() {
        _time = selected;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar pada halaman utama
      appBar: AppBar(title: const Text('Percobaan Menggunakan Widget')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              // Menampilkan waktu yang dipilih
              Text('Waktu yang Anda pilih: ${_time.toString()}'),
              // Tombol untuk memilih waktu
              ElevatedButton(
                onPressed: () {
                  // Saat tombol ditekan, panggil metode selectTime
                  selectTime(context);
                },
                child: const Text('Pilih Waktu'),
              ),
            ],
          ),
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
