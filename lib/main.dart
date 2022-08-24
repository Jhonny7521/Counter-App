import 'package:counter_app/screens/counter_screen.dart';
//import 'package:counter_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  //mi primer widget
  runApp(const MyApp());
}

// La extenedemos de  StatelessWidget para que se convierta en widget
class MyApp extends StatelessWidget {
  //constructor de MyApp
  const MyApp({Key? key}) : super(key: key);

  //todo widget tiene un build
  @override
  Widget build(BuildContext context) {
    //segundo widget
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        //home: HomeScreen()
        home: CounterScreen());
  }
}
