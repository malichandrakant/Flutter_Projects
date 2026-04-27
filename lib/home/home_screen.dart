import 'package:flutter/material.dart';
import 'package:navigation/profile/profile_screen.dart';

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
        title: Text("Navigation in Flutter"),
        backgroundColor: Colors.amberAccent,
      ),

      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return ProfileScreen();
                },
              ),
            );
          },
          child: Text("Next Button"),
        ),
      ),
    );
  }
}
