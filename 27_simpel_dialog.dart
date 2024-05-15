import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Saya',
      home: Home(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.green,
        ),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String answer = '';
  String message = '';

  void setAnswer(String value) {
    setState(() {
      answer = value;
      message = 'Anda memilih: $answer';
    });
  }

  Future<void> confirm(BuildContext context) async {
    Answer? result = await showDialog<Answer>(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text('Konfirmasi'),
          children: <Widget>[
            Column(
              children: <Widget>[
                const Text('apakah anda suka rendang petai?'),
                const SizedBox(height: 25.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    ElevatedButton(
                      child: const Text('Ya'),
                      onPressed: () {
                        Navigator.pop(context, Answer.YES);
                      },
                    ),
                    const SizedBox(width: 5.0),
                    ElevatedButton(
                      child: const Text('Tidak'),
                      onPressed: () {
                        Navigator.pop(context, Answer.NO);
                      },
                    ),
                    const SizedBox(width: 5.0),
                  ],
                ),
              ],
            ),
          ],
        );
      },
    );

    if (result == Answer.YES) {
      setAnswer('Ya');
    } else {
      setAnswer('Tidak');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Percobaan Menggunakan Widget')),
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 15.0),
            ElevatedButton(
              child: const Text('Show dialog'),
              onPressed: () {
                confirm(context);
              },
            ),
            const SizedBox(height: 15.0),
            Text(
              message,
              style: const TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}

enum Answer { YES, NO }
