import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle C_white = TextStyle(fontSize: 30, color: Colors.white);

    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('Home', style: C_white),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Hola mundo', style: C_white)],
        ),
      ),
      floatingActionButton: Boton(),
    );
  }
}

class Boton extends StatelessWidget {
  const Boton({super.key});
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        print('has pulsado un boton');
      },
      backgroundColor: Colors.deepPurpleAccent[100],
      child: Icon(Icons.add),
    );
  }
}

