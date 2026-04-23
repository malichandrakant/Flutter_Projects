import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column and Row Widget Demo'),
        backgroundColor: Colors.limeAccent,
      ),

      body: Column(
        children: [
          Text("This Column 1"),
          Row(
            spacing: 20,
            children: [
              Container(height: 100, width: 80, color: Colors.amberAccent),
              Container(height: 100, width: 80, color: Colors.amberAccent),
              Container(height: 100, width: 80, color: Colors.amberAccent),
              Container(height: 100, width: 80, color: Colors.amberAccent),
            ],
          ),
          Text("This Column 2"),
          Row(
            spacing: 20,
            children: [
              Container(
                height: 100,
                width: 80,
                color: const Color.fromARGB(255, 185, 255, 64),
              ),
              Container(
                height: 100,
                width: 80,
                color: const Color.fromARGB(255, 185, 255, 64),
              ),
              Container(
                height: 100,
                width: 80,
                color: const Color.fromARGB(255, 185, 255, 64),
              ),
              Container(
                height: 100,
                width: 80,
                color: const Color.fromARGB(255, 185, 255, 64),
              ),
            ],
          ),
          Text("This Column 3"),
          Row(
            spacing: 20,
            children: [
              Container(
                height: 100,
                width: 80,
                color: const Color.fromARGB(255, 248, 78, 11),
              ),
              Container(
                height: 100,
                width: 80,
                color: const Color.fromARGB(255, 248, 78, 11),
              ),
              Container(
                height: 100,
                width: 80,
                color: const Color.fromARGB(255, 248, 78, 11),
              ),
              Container(
                height: 100,
                width: 80,
                color: const Color.fromARGB(255, 248, 78, 11),
              ),
            ],
          ),
          SizedBox(height: 20),
          Column(
            children: [
              Container(
                height: 100,
                width: 80,
                color: const Color.fromARGB(255, 255, 25, 163),
              ),
              SizedBox(width: 20),
              Container(
                height: 100,
                width: 80,
                color: const Color.fromARGB(255, 255, 25, 163),
              ),
              SizedBox(width: 20),
              Container(
                height: 100,
                width: 80,
                color: const Color.fromARGB(255, 255, 25, 163),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
