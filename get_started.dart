import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'control_bar.dart';

class GetStartedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            // Background image
            Positioned.fill(
              child: Image.asset("assets/images/bg.jpg", fit: BoxFit.cover),
            ),

            // 🔹 Top-left text
            Positioned(
              top: 50,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "SmartNest",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 8),

                  Text(
                    "Control Everything\n in One Place",
                    style: GoogleFonts.poppins(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ],
              ),
            ),

            Positioned(bottom: 30, left: 10, right: 10, child: ControlBar()),
          ],
        ),
      ),
    );
  }
}
