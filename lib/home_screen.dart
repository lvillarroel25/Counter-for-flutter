import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  num counter = 1;
  @override
  Widget build(BuildContext context) {

    TextStyle C_white = TextStyle(fontSize: 30, color: Colors.white); //color

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text('Counter', style: C_white),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('contador', style: C_white),
            Text('$counter', style: C_white),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Boton(
                onPressed: () {
                  counter++;
                  setState(() {});
                },
                icon: Icons.add,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 10),
                  Boton(
                    onPressed: () {
                      counter--;
                      setState(() {});
                    },
                    icon: Icons.remove,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 10),
                  Boton(
                    onPressed: () {
                      counter /= 2;
                      setState(() {});
                    },
                    icon: Icons.horizontal_split_sharp // no consigo el icono de divicion
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 10),
                  Boton(onPressed: () {
                    counter *=2 ;
                    setState(() {});
                  }, icon: Icons.close
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class Boton extends StatelessWidget {
  const Boton({super.key, required this.onPressed, required this.icon});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
          onPressed: () {
            onPressed();
          },
          backgroundColor: Colors.orangeAccent[100],
          child: Icon(icon),
        ),
      ],
    );
  }
    final VoidCallback onPressed;
  final IconData icon;
}