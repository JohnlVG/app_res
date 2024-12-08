import 'package:flutter/material.dart';
import '../logic/ejercicio2_logic.dart';

class Ejercicio2Screen extends StatefulWidget {
  @override
  _Ejercicio2ScreenState createState() => _Ejercicio2ScreenState();
}

class _Ejercicio2ScreenState extends State<Ejercicio2Screen> {
  final TextEditingController _controller = TextEditingController();
  String _resultado = '';

  void _calcular() {
    int? num = int.tryParse(_controller.text);
    if (num != null && num >= 0) {
      setState(() {
        _resultado = calcularFactorial(num).toString();
      });
    } else {
      setState(() {
        _resultado = 'Número inválido';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ejercicio 2: Factorial')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Ingresa un número'),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: _calcular, child: Text('Calcular Factorial')),
            SizedBox(height: 20),
            if (_resultado.isNotEmpty)
              Container(
                padding: EdgeInsets.all(16),
                color: Colors.green.shade100,
                child: Text('Resultado: $_resultado'),
              ),
          ],
        ),
      ),
    );
  }
}
