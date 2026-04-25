import 'package:flutter/material.dart';
import 'package:single_data_api/screen/screen_with_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenWithModel(),
    );
  }
}
