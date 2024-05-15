// Import library flutter yang diperlukan untuk membuat aplikasi
import 'package:flutter/material.dart';

// Fungsi main sebagai entry point untuk menjalankan aplikasi
void main() {
  // Menjalankan aplikasi dengan root widget MyApp
  runApp(const MyApp());
}

// Class MyApp adalah StatelessWidget yang merupakan root widget dari aplikasi
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  // Build method untuk membangun UI dari aplikasi
  @override
  Widget build(BuildContext context) {
    // MaterialApp sebagai root widget untuk Material Design
    return MaterialApp(
      // Judul aplikasi
      title: 'Flutter Demo new',
      // Tema aplikasi
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Halaman awal aplikasi menggunakan class Home
      home: const Home(title: 'Flutter Demo Home Page'),
    );
  }
}

// Class Home adalah StatefulWidget yang menampilkan halaman utama aplikasi
class Home extends StatefulWidget {
  const Home({Key? key, required this.title}) : super(key: key);
  
  // Properti title untuk judul halaman
  final String title;
  
  // Override method createState untuk membuat instance dari _HomeState
  @override
  State<Home> createState() => _HomeState();
}

// Class _HomeState adalah State dari Home, digunakan untuk mengatur state halaman
class _HomeState extends State<Home> {
  // Build method untuk membangun UI dari halaman utama aplikasi
  @override
  Widget build(BuildContext context) {
    // Scaffold sebagai struktur dasar dari halaman dengan AppBar dan body
    return Scaffold(
      // AppBar sebagai baris atas halaman dengan judul
      appBar: AppBar(title: const Text('hai Percobaan Menggunakan Widget StatelessWidget')),
      // Body halaman, menggunakan Padding dan Column untuk menata widget secara vertikal
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[ ],
        ),
      ),
    );
  }
}
