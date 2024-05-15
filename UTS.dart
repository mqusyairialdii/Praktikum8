import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  TextEditingController _firstNumberController = TextEditingController();
  TextEditingController _secondNumberController = TextEditingController();
  TextEditingController _resultController = TextEditingController();
  String _operation = '+';

  @override
  void dispose() {
    _firstNumberController.dispose();
    _secondNumberController.dispose();
    _resultController.dispose();
    super.dispose();
  }

  void _calculate() {
    double firstNumber = double.tryParse(_firstNumberController.text) ?? 0.0;
    double secondNumber = double.tryParse(_secondNumberController.text) ?? 0.0;
    double result;

    switch (_operation) {
      case '+':
        result = firstNumber + secondNumber;
        break;
      case '-':
        result = firstNumber - secondNumber;
        break;
      case '/':
        result = firstNumber / secondNumber;
        break;
      case '~/':
        result = (firstNumber ~/ secondNumber).toDouble();
        break;
      case '*':
        result = firstNumber * secondNumber;
        break;
      case '%':
        result = firstNumber % secondNumber;
        break;

      default:
        result = 0.0;
    }

    _resultController.text = result.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _firstNumberController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(labelText: 'Enter first number'),
            ),
            TextField(
              controller: _secondNumberController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(labelText: 'Enter second number'),
            ),
            DropdownButtonFormField(
              value: _operation,
              items: ['+', '-', '/', '~/', '*', '%', '^'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? value) {
                setState(() {
                  _operation = value ?? '+';
                });
              },
            ),
            ElevatedButton(
              onPressed: _calculate,
              child: Text('Calculate'),
            ),
            TextField(
              controller: _resultController,
              readOnly: true,
              decoration: InputDecoration(labelText: 'Result'),
            ),
          ],
        ),
      ),
    );
  }
}
