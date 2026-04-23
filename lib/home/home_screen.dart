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
        title: Text("ListView and ListTile Widget Demo"),
        backgroundColor: Colors.yellow,
        centerTitle: true,
        titleTextStyle: TextStyle(fontWeight: FontWeight(200)),
      ),

      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            color: Colors.blue,
            height: 100,
            child: Text("List 1"),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            color: Colors.blue,
            height: 100,
            child: Text("List 2"),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            color: Colors.blue,
            height: 100,
            child: Text("List 3"),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            color: Colors.blue,
            height: 100,
            child: Text("List 4"),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            color: Colors.blue,
            height: 100,
            child: Text("List 5"),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            color: Colors.blue,
            height: 100,
            child: Text("List 6"),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            color: Colors.blue,
            height: 100,
            child: Text("List 7"),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            color: Colors.blue,
            height: 100,
            child: Text("List 8"),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            color: Colors.blue,
            height: 100,
            child: Text("List 9"),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            color: Colors.blue,
            height: 100,
            child: Text("List 10"),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            color: Colors.blue,
            height: 100,
            child: Text("List 11"),
          ),
        ],
      ),
    );
  }
}
