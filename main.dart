import 'package:flutter/material.dart';
import 'get_started.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 215, 247, 255),
      ),
      home: GetStartedScreen(),
    );
  }
}
