import 'package:contador/screens/counter_screen.dart';
//import 'package:contador/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
 runApp(const Myapp());  
}

class Myapp extends StatelessWidget{
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: HomeScreen()
      home: CounterScreen()
    );
  }

}

