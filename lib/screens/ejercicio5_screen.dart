import 'package:flutter/material.dart';

class Ejercicio5Screen extends StatefulWidget {
  @override
  _Ejercicio5ScreenState createState() => _Ejercicio5ScreenState();
}

class _Ejercicio5ScreenState extends State<Ejercicio5Screen> {
  List<int> primeNumbers = [];

  @override
  void initState() {
    super.initState();
    _generatePrimeNumbers();
  }

  // Función para generar números primos
  void _generatePrimeNumbers() {
    int limit = 32767;
    for (int num = 2; num <= limit; num++) {
      if (_isPrime(num)) {
        primeNumbers.add(num);
      }
    }
  }

  // Función para verificar si un número es primo
  bool _isPrime(int number) {
    for (int i = 2; i <= number / 2; i++) {
      if (number % i == 0) {
        return false;
      }
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Números Primos entre 3 y 32767'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Título de la página
            Text(
              'Lista de Números Primos',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 20),
            // Usamos ListView.builder para permitir desplazamiento
            Expanded(
              child: ListView.builder(
                itemCount: primeNumbers.length,
                itemBuilder: (context, index) {
                  // Agrupar números en columnas
                  if (index % 3 == 0 && index != 0) {
                    return Divider(); // Añadimos un divisor entre cada grupo de 3 números
                  }

                  return Container(
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.symmetric(vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.teal[50],
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.tealAccent),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // Mostramos los números primos en columnas
                        Text(
                          '${primeNumbers[index]}',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.teal,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
