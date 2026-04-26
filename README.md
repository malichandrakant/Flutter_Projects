# 📱 Flutter Bottom Navigation Demo

A simple Flutter application demonstrating how to implement a **Bottom Navigation Bar** to switch between multiple screens.

## 🚀 Features

* Bottom navigation with 3 tabs:

  * Home
  * Search
  * Profile
* Smooth screen switching using `setState`
* Persistent UI using `IndexedStack`
* Clean and responsive layout
## 🛠 Tech Stack

* Flutter
* Dart

## 📂 Project Structure

lib/
    home/
 └── bottom_navigation_screen.dart
 /
    screenshot/
 └── main.dart


## ⚙️ How It Works
* Uses `BottomNavigationBar` for navigation
* Maintains selected tab using `currentIndex`
* Displays screens dynamically based on selected index
* Uses `IndexedStack` to preserve screen state


## 📸 Screenshots

(lib/screenshot/bottom_navigation_bar_screen.png) |


## ▶️ Run Project

flutter pub get
flutter run

## ✨ Future Improvements

* Add real screens instead of placeholders
* Integrate API data in each tab
* Add icons animation
* Use state management (Provider / Riverpod)

## 👨‍💻 Author

Chandrakant Mali

## ⭐ Note

This project is created to understand bottom navigation and screen management in Flutter.
