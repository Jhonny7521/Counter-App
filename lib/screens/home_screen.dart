import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);
    int counter = 15;

    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
        elevation: 10.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          // children: const <Widget>[
          children: [
            const Text(
              'Clicks Counter',
              style: fontSize30,
            ),
            Text('$counter', style: fontSize30),
            // todo lo que esta dentro de const <Widget>[ ... ] tiene que ser un widget
            // Si se desea se puede obiar <Widget>
          ],
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, //cambiamos ubicacion del boton
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          counter++;
          print('Hola mundo');
        },
      ),
    );
  }
}
