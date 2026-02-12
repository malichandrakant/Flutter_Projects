import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: Text('Home'),

  backgroundColor: Colors.deepOrange,
),
      body: Text('Dream big, start small, act now.',
      textDirection: TextDirection.ltr,
        maxLines:3,
        style: TextStyle(
        fontSize: 70,
          color: Colors.deepPurple,

            backgroundColor: Colors.yellow

      ),),
    );
  }
}
