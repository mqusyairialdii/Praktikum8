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
  final List<String> _list = [
    'Bengkalis',
    'Bantan',
    'Siak Kecil',
    'Rupat',
    'Rupat Utara',
    'Bukit Batu'
  ];
  String _item = 'Bengkalis';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Percobaan Menggunakan Widget')),
      body: Padding(
        padding: const EdgeInsets.all(8.0), // Padding untuk memberikan jarak antara elemen-elemen dalam widget.
        child: Row(
          children: <Widget>[
            const Text('Pilih Kecamatan : '), // Teks sebagai label untuk DropdownButton.
            DropdownButton(
              value: _item, // Nilai terpilih pada DropdownButton.
              items: _list.map((String val) { // Membuat daftar item dropdown.
                return DropdownMenuItem(
                    value: val,
                    child: Row(
                      children: <Widget>[
                        const Icon(Icons.location_city), // Ikona kota untuk setiap item dropdown.
                        Text(val), // Teks nama kota untuk setiap item dropdown.
                      ],
                    ));
              }).toList(), // Mengubah hasil pemetaan menjadi daftar yang dapat digunakan pada DropdownButton.
              onChanged: (String? value) { // Menangani perubahan nilai dropdown.
                setState(() {
                  _item = value!; // Mengatur nilai terpilih ke nilai yang baru.
                });
              },
            ),
          ],
        ),
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
