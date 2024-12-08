import 'package:flutter/material.dart';
import '../logic/ejercicio3_logic.dart';

class Ejercicio3Screen extends StatefulWidget {
  @override
  _Ejercicio3ScreenState createState() => _Ejercicio3ScreenState();
}

class _Ejercicio3ScreenState extends State<Ejercicio3Screen> {
  final TextEditingController _controllerA = TextEditingController();
  final TextEditingController _controllerB = TextEditingController();
  String _resultado = '';

  void _calcularMCD() {
    int? a = int.tryParse(_controllerA.text);
    int? b = int.tryParse(_controllerB.text);

    if (a != null && b != null && a > 0 && b > 0) {
      setState(() {
        _resultado = calcularMCD(a, b).toString();
      });
    } else {
      setState(() {
        _resultado = 'Ingresa números válidos mayores que 0';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ejercicio 3: MCD de dos números')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controllerA,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Ingresa el primer número'),
            ),
            TextField(
              controller: _controllerB,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Ingresa el segundo número'),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: _calcularMCD, child: Text('Calcular MCD')),
            SizedBox(height: 20),
            if (_resultado.isNotEmpty)
              Container(
                padding: EdgeInsets.all(16),
                color: Colors.blue.shade100,
                child: Text('Resultado: $_resultado'),
              ),
          ],
        ),
      ),
    );
  }
}
