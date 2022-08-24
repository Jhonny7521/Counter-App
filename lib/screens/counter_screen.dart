import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 15; //fuera del build ya que sino se redibujaria el mismo valor

  void increase() {
    counter++;
    setState(() {});
  }

  void decrease() {
    counter--;
    setState(() {});
  }

  void reset() {
    counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterScreen'),
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
      floatingActionButtonLocation: FloatingActionButtonLocation
          .centerFloat, //cambiamos ubicacion del boton
      floatingActionButton: CustomFloatingActions(
        increaseFn: increase,
        decreaseFn: decrease,
        resetFn: reset,
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;

  const CustomFloatingActions({
    Key? key,
    required this.increaseFn,
    required this.decreaseFn,
    required this.resetFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          onPressed: () => increaseFn(),
          child: const Icon(Icons.exposure_plus_1_outlined),
        ),
        // const SizedBox(
        //   width: 20,
        // ),
        FloatingActionButton(
          onPressed: () => resetFn(),
          child: const Icon(Icons.restart_alt_outlined),
        ),
        // const SizedBox(
        //   width: 20,
        // ),
        FloatingActionButton(
          onPressed: () => decreaseFn(),
          child: const Icon(Icons.exposure_minus_1_outlined),
        ),
      ],
    );
  }
}
