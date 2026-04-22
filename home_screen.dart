import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 187, 14),
      ),
      body: Center(
        child: Text(
          "पाऊस पडत आहे आणि वातावरण थंड झाले आहे",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.pink,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
