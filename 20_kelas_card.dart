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
  final int _count = 20; // Jumlah item dalam daftar.
  final List<bool> _items = <bool>[]; // List status item, awalnya kosong.
  @override
  void initState() {
    super.initState();
    setState(() {
      for (var i = 0; i < _count; i++) {
        _items.add(false); // Menginisialisasi status item ke false (tidak dipilih).
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Percobaan Menggunakan Widget')), // Judul app bar.
      body: ListView.builder(
        padding: const EdgeInsets.all(5.5), // Padding untuk daftar.
        itemCount: _count, // Jumlah item dalam daftar.
        itemBuilder: (BuildContext context, int index) {
          return Card(
            margin: const EdgeInsets.only(left: 15.0, top: 20.0, right: 15.0), // Margin untuk card.
            child: GestureDetector(
              child: ListTile(
                title: Text('Item ${index + 1}'), // Judul item.
                leading: const Icon(Icons.person), // Icon depan.
                trailing: const Icon(Icons.delete), // Icon belakang.
              ),
              onTap: () {
                print('Anda memilih item ${index + 1}'); // Menampilkan pesan ketika item dipilih.
              },
            ),
          );
        },
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
