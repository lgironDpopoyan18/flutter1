import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

int counter = 0;
int menos = 0;

void increase (){
  counter++;
  setState(() {});
}

void decrease(){
counter --;
setState(() {});
}

void reset(){
  counter=0;
  setState(() {});
}

  //variable propiedad
  @override
  Widget build(BuildContext context) {

const size = TextStyle(fontSize: 30);


    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('CounterScreen'),
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
      floatingActionButton: Customfloating(
        incrementoFn: increase,
        decrecimientoFn: decrease,
        resetFn: reset,
      ),

    );
  }
}

class Customfloating extends StatelessWidget {

  final Function incrementoFn;
  final Function decrecimientoFn;
  final Function resetFn;
  const Customfloating({
    Key? key, required this.incrementoFn, required this.decrecimientoFn, required this.resetFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        
          FloatingActionButton(
          child: const  Icon(Icons.exposure_minus_1_sharp),
          onPressed: () => decrecimientoFn(),
          ),
        
          FloatingActionButton(
          child:  const Icon(Icons.remove_circle),
          onPressed: () => resetFn(),
          ), 

          FloatingActionButton(
          child:  const Icon(Icons.exposure_plus_1_rounded),
          onPressed:() => incrementoFn(),
          ),
      ],
    );
  }
}