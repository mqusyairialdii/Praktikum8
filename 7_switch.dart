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
  // Daftar pengaturan yang akan ditampilkan
  final List<String> settings = ['Data Seluler', 'Mode Pesawat', 'WiFi'];
  // Daftar nilai pengaturan yang sesuai dengan setiap pengaturan
  List<bool> settingValues = [false, false, false];

  @override
  Widget build(BuildContext context) {
    // Scaffold sebagai struktur dasar dari halaman dengan AppBar dan body
    return Scaffold(
      // AppBar sebagai baris atas halaman dengan judul
      appBar: AppBar(title: const Text('Percobaan Menggunakan Widget')),
      // Body halaman, menggunakan Padding dan Column untuk menata widget secara vertikal
      // Widget Padding untuk menambahkan padding di sekitar ListView
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(children: <Widget>[
          // Baris untuk pengaturan pertama
          Row(
            children: <Widget>[
              // Widget Switch untuk pengaturan pertama
              Switch(
                value:
                    settingValues[0], // Nilai saat ini dari pengaturan pertama
                // Penanganan peristiwa onChanged untuk pengaturan pertama
                onChanged: (bool value) {
                  setState(() {
                    // Memperbarui nilai dari pengaturan pertama
                    settingValues[0] = value;
                  });
                  // Mencetak nilai pengaturan yang diperbarui untuk debug
                  print(settingValues);
                },
              ),
              // Spasi antara Switch dan Text
              Container(width: 10.0),
              // Widget Text untuk menampilkan label dari pengaturan pertama
              Text(settings[0]),
            ],
          ),
          // Pembatas untuk memisahkan pengaturan pertama dari berikutnya
          const Divider(),
          // Baris untuk pengaturan kedua (struktur serupa dengan pengaturan pertama)
          Row(
            children: <Widget>[
              Switch(
                value: settingValues[1], // Nilai saat ini dari pengaturan kedua
                onChanged: (bool value) {
                  setState(() {
                    // Memperbarui nilai dari pengaturan kedua
                    settingValues[1] = value;
                  });
                  // Mencetak nilai pengaturan yang diperbarui untuk debug
                  print(settingValues);
                },
              ),
              Container(width: 10.0),
              // Widget Text untuk menampilkan label dari pengaturan kedua
              Text(settings[1]),
            ],
          ),
          // Pembatas untuk memisahkan pengaturan kedua dari berikutnya
          const Divider(),
          // Baris untuk pengaturan ketiga (struktur serupa dengan pengaturan pertama dan kedua)
          Row(
            children: <Widget>[
              Switch(
                value:
                    settingValues[2], // Nilai saat ini dari pengaturan ketiga
                onChanged: (bool value) {
                  setState(() {
                    // Memperbarui nilai dari pengaturan ketiga
                    settingValues[2] = value;
                  });
                  // Mencetak nilai pengaturan yang diperbarui untuk debug
                  print(settingValues);
                },
              ),
              Container(width: 10.0),
              // Widget Text untuk menampilkan label dari pengaturan ketiga
              Text(settings[2]),
            ],
          ),
        ]),
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
