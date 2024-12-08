import 'package:flutter/material.dart';
import 'ejercicio1_screen.dart';
import 'ejercicio2_screen.dart';
import 'ejercicio3_screen.dart';
import 'ejercicio4_screen.dart';
import 'ejercicio5_screen.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Menú de Ejercicios')),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          menuButton(context, 'Ejercicio 1', 'assets/imgs/1.png', Ejercicio1Screen()),
          menuButton(context, 'Ejercicio 2', 'assets/imgs/2.png', Ejercicio2Screen()),
          menuButton(context, 'Ejercicio 3', 'assets/imgs/3.png', Ejercicio3Screen()),
          menuButton(context, 'Ejercicio 4', 'assets/imgs/4.png', Ejercicio4Screen()),
          menuButton(context, 'Ejercicio 5', 'assets/imgs/5.png', Ejercicio5Screen()),
        ],
      ),
    );
  }

  Widget menuButton(BuildContext context, String title, String imgPath, Widget screen) {
    return Card(
      child: ListTile(
        leading: Image.asset(imgPath, width: 50, height: 50),
        title: Text(title),
        trailing: Icon(Icons.arrow_forward),
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => screen)),
      ),
    );
  }
}
