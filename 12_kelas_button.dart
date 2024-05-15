import 'package:flutter/material.dart'; // Import library material.dart dari Flutter

void main() {
  runApp(const MyApp()); // Menjalankan aplikasi Flutter
}

class MyApp extends StatelessWidget { // Membuat class MyApp yang merupakan StatelessWidget
  const MyApp({Key? key}) : super(key: key); // Konstruktor MyApp

  @override
  Widget build(BuildContext context) { // Method untuk membangun UI aplikasi
    return MaterialApp( // Mengembalikan MaterialApp sebagai root widget
      title: 'My App', // Judul aplikasi
      home: Home(), // Halaman awal aplikasi
      theme: ThemeData( // Tema aplikasi
        appBarTheme: AppBarTheme( // Tema appbar
          backgroundColor: Colors.green, // Warna latar belakang appbar hijau
        ),
        timePickerTheme: TimePickerThemeData( // Tema time picker
          backgroundColor: Colors.green, // Warna latar belakang time picker hijau
        ),
      ),
    );
  }
}

class _HomeState extends State<Home> { // Membuat class _HomeState yang merupakan State dari Home
  @override
  Widget build(BuildContext context) { // Method untuk membangun UI halaman home
    return Scaffold( // Mengembalikan Scaffold sebagai root widget
      appBar: AppBar(title: const Text('Percobaan Menggunakan Widget')), // AppBar
      body: Center( // Widget untuk membuat child berada di tengah-tengah
        child: Padding( // Padding untuk memberi jarak antara child dengan tepi layar
          padding: const EdgeInsets.all(8.0), // Padding sebesar 8.0
          child: Column( // Column untuk menampung beberapa widget secara vertikal
            children: <Widget>[ // List widget dalam column
              ElevatedButton( // Button dengan latar belakang terangkat
                onPressed: () {}, // Aksi ketika tombol ditekan
                style: ElevatedButton.styleFrom( // Mengatur style tombol
                  backgroundColor: Colors.green, // Mengubah warna latar belakang tombol menjadi hijau
                ),
                child: const Text( // Teks pada tombol
                  'Elevated Button', // Teks tombol
                  style: TextStyle( // Style teks
                    fontSize: 18.0, // Ukuran font
                  ),
                ),
              ),
              const SizedBox( // Widget untuk memberi jarak vertikal
                height: 5.0, // Tinggi jarak
              ),
              OutlinedButton( // Button dengan garis tepi
                onPressed: () {}, // Aksi ketika tombol ditekan
                style: OutlinedButton.styleFrom( // Mengatur style tombol
                  side: BorderSide(color: Colors.green), // Mengubah warna garis tepi menjadi hijau
                ),
                child: const Text( // Teks pada tombol
                  'Outline Button', // Teks tombol
                  style: TextStyle( // Style teks
                    fontSize: 18.0, // Ukuran font
                  ),
                ),
              ),
              const SizedBox( // Widget untuk memberi jarak vertikal
                height: 5.0, // Tinggi jarak
              ),
              TextButton( // Button dengan teks
                onPressed: () {}, // Aksi ketika tombol ditekan
                child: const Text( // Teks pada tombol
                  'Text Button', // Teks tombol
                  style: TextStyle( // Style teks
                    fontSize: 18.0, // Ukuran font
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Home extends StatefulWidget { // Membuat class Home yang merupakan StatefulWidget
  const Home({Key? key}) : super(key: key); // Konstruktor Home

  @override
  _HomeState createState() => _HomeState(); // Membuat state dari Home
}
