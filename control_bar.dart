import 'package:flutter/material.dart';
import 'login_screen.dart'; // 👈 add this

class ControlBar extends StatelessWidget {
  const ControlBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // 🔙 Back button
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_circle_left_outlined,
            size: 60,
            color: Colors.white,
          ),
        ),

        // 📦 Pill container
        Expanded(
          child: Container(
            margin: EdgeInsets.only(right: 10),
            padding: EdgeInsets.symmetric(horizontal: 16),
            height: 70,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 252, 252).withOpacity(0.6),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // ▶️ Play button (NOW CLICKABLE)
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => LoginScreen()),
                    );
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.play_arrow, color: Colors.black),
                  ),
                ),

                // Text
                Text("Start", style: TextStyle(color: Colors.white)),

                // Arrows
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(
                    3,
                    (index) =>
                        Icon(Icons.arrow_right, size: 18, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
