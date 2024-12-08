import 'package:flutter/material.dart';
import '../logic/ejercicio4_logic.dart';

class Ejercicio4Screen extends StatefulWidget {
  @override
  _Ejercicio4ScreenState createState() => _Ejercicio4ScreenState();
}

class _Ejercicio4ScreenState extends State<Ejercicio4Screen> {
  final TextEditingController _controller = TextEditingController();
  String _resultado = '';

  void _factorizar() {
    int? num = int.tryParse(_controller.text);
    if (num != null && num > 1) {
      final factores = factorizarNumero(num);
      setState(() {
        _resultado = factores.entries
            .map((e) => '${e.key}^${e.value}')
            .join(' × ');
      });
    } else {
      setState(() {
        _resultado = 'Ingresa un número válido mayor que 1';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ejercicio 4: Factorización de un número')),
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
            ElevatedButton(onPressed: _factorizar, child: Text('Factorizar')),
            SizedBox(height: 20),
            if (_resultado.isNotEmpty)
              Container(
                padding: EdgeInsets.all(16),
                color: Colors.orange.shade100,
                child: Text('Factorización: $_resultado'),
              ),
          ],
        ),
      ),
    );
  }
}
