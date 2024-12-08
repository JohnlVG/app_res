import 'package:flutter/material.dart';

class Ejercicio1Screen extends StatefulWidget {
  @override
  _Ejercicio1ScreenState createState() => _Ejercicio1ScreenState();
}

class _Ejercicio1ScreenState extends State<Ejercicio1Screen> {
  List<Map<String, dynamic>> asciiTable = [];

  @override
  void initState() {
    super.initState();
    _generateAsciiTable();
  }

  // Genera la tabla de caracteres ASCII
  void _generateAsciiTable() {
    for (int i = 0; i <= 255; i++) {
      asciiTable.add({
        'number': i,
        'char': String.fromCharCode(i),
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tabla de Caracteres ASCII'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Título de la página
            Text(
              'Lista de caracteres ASCII',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 20),
            // Se envuelve el contenido en un ListView para permitir desplazamiento
            Expanded(
              child: ListView.builder(
                itemCount: asciiTable.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.symmetric(vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.blueAccent),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Número
                        Text(
                          '${asciiTable[index]['number']}',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent,
                          ),
                        ),
                        // Carácter ASCII
                        Text(
                          '${asciiTable[index]['char']}',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black87,
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
