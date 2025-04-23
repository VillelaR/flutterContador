import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Contador());
  }
}
 
class Contador extends StatefulWidget {
  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contador com Estado')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Valor: $contador', style: TextStyle(fontSize: 32, color: Colors.black)),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: increment, child: Text('+')),
              SizedBox(width: 10),
              ElevatedButton(onPressed: decrement, child: Text('-')),
              SizedBox(width: 10),
              ElevatedButton(onPressed: reset, child: Text('Resetar')),
            ],
          ),
        ],
      ),
    );
  }

  void increment () {
    setState(() {
      contador ++;
    });
  }
  void decrement () {
    setState(() {
      contador --;
    });
  }
  void reset () {
    setState(() {
      contador = 0;
    });
  }
}
 
 