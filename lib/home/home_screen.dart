import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text(
          "Stack and Positioned Widget",
          style: TextStyle(fontWeight: FontWeight(200)),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              width: 100,
              height: 100,
              color: const Color.fromARGB(255, 255, 6, 101),
            ),
          ),
          Positioned(
            right: 0,
            left: 0,
            child: Container(
              width: 100,
              height: 100,
              color: const Color.fromARGB(255, 10, 255, 6),
            ),
          ),
        ],
      ),
    );
  }
}
