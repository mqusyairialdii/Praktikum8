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
    );
  }
}

// Class Home adalah StatefulWidget yang menampilkan halaman utama aplikasi
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

// Class _HomeState adalah State dari Home, digunakan untuk mengatur state halaman
class _HomeState extends State<Home> {
  // TextEditingController untuk mengontrol input dari TextField
  final TextEditingController _controller = TextEditingController();

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
          // Widget children dari Column
          children: <Widget>[
            // TextField sebagai input teks
            TextField(
              controller: _controller,
              // Fungsi onChanged dipanggil ketika nilai dalam TextField berubah
              onChanged: (String value) {
                // Memanggil setState untuk memperbarui tampilan
                setState(() {});
              },
              // Decoration untuk mengatur tampilan dan gaya input field
              decoration: const InputDecoration(
                // Hint text yang ditampilkan saat input field kosong
                hintText: 'Inputkan nama Anda',
                // Gaya teks untuk hint text
                hintStyle: TextStyle(
                  fontStyle: FontStyle.normal,
                ),
                // Label untuk input field
                labelText: 'Nama Anda',
                // Icon yang ditampilkan di sebelah kiri input field
                icon: Icon(Icons.person_pin),
                // Icon yang ditampilkan di sebelah kiri input field sebelum text input
                prefixIcon: Icon(Icons.person),
                // Border untuk input field
                border: OutlineInputBorder(),
              ),
            ),
            // Spacer untuk memberikan jarak antara TextField dan ElevatedButton
            Container(
              height: 10,
            ),
            // ElevatedButton untuk menampilkan tombol dengan latar belakang yang diangkat
            ElevatedButton(
              // Teks di dalam tombol
              child: const Text('Submit'),
              // onPressed adalah callback yang akan dipanggil ketika tombol ditekan
              onPressed: () {
                // Menampilkan dialog AlertDialog ketika tombol ditekan
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      // Isi dari dialog adalah teks yang mengandung nilai dari TextField
                      content: Text('Hallo apa kabar ${_controller.text}'),
                    );
                  },
                );
              },
            ),
            // Spacer untuk memberikan jarak antara ElevatedButton dan Text
            Container(
              height: 10.0,
            ),
            // Menampilkan nilai dari TextField
            Text(_controller.text),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
