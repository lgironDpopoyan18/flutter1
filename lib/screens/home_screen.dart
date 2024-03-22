
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({Key? key}) : super(key: key);

  //variable propiedad
  
  @override
  Widget build(BuildContext context) {

const size = TextStyle(fontSize: 30);
int counter = 10;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('HomeScreen'),
        elevation: 10.0,
      ),
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const Text('Contador de clicks', style: size), 
            Text('$counter', style: size), 
            ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_box_rounded),
        onPressed: () { 
          counter++;
         },
        ),
    );
  }

}