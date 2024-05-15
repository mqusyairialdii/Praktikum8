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
  // Kelas state untuk widget Home.
  List<Widget> createItems(int count) {
    // Membuat daftar widget berdasarkan jumlah yang ditentukan.
    List<Widget> items = <Widget>[];
    for (var i = 0; i < count; i++) {
      // Loop untuk menambahkan ListTile dan Divider ke dalam daftar items.
      items.add(ListTile(
        title: Text('Item ${i + 1}'),
        leading: const Icon(
            Icons.star), // Ikona yang akan ditampilkan di sebelah kiri judul.
        trailing: const Icon(Icons
            .delete), // Ikona yang akan ditampilkan di sebelah kanan judul.
      ));
      items.add(
        const Divider(color: Colors.black26),
      );
    }
    return items; // Mengembalikan daftar widget.
  }

  @override
  Widget build(BuildContext context) {
    // Membangun tampilan widget Home.
    return Scaffold(
      appBar: AppBar(title: const Text('Percobaan Menggunakan Widget')),
      body: ListView(
        // Menampilkan daftar item dalam ListView.
        padding: const EdgeInsets.all(10.0),
        children: createItems(
            20), // Menggunakan method createItems untuk membuat daftar.
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
