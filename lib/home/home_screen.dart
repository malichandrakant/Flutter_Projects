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
        title: Text(
          "Clickable Widget Demo",
          style: TextStyle(fontWeight: FontWeight(300), color: Colors.white),
        ),
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              print("Tapped");
            },
            child: Container(
              padding: EdgeInsets.all(20),
              color: Colors.blue,
              child: Text("Click Me"),
            ),
          ),
          SizedBox(height: 30),

          InkWell(
            onLongPress: () {
              print("Long pressed");
            },
            child: Container(
              padding: EdgeInsets.all(20),
              color: Colors.orange,
              child: Text("InkWell Button"),
            ),
          ),
        ],
      ),
    );
  }
}
