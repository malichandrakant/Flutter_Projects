import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int counter = 0;
  String title = "Home";

  void increaseCounter() {
    setState(() {
      counter++;
      title = "Clicked $counter times";
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Button Pressed! Count: $counter"),
        duration: const Duration(seconds: 1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.deepOrangeAccent,
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        color: Colors.orange.shade50,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              "Counter Value",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              "$counter",
              style: const TextStyle(
                fontSize: 40,
                color: Colors.deepOrange,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: increaseCounter,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30, vertical: 15),
              ),
              child: const Text(
                "Increase Counter",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
