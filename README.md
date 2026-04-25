# 🚀 Flutter HTTP Methods Demo

A simple Flutter application demonstrating how to perform HTTP operations (POST, PUT, PATCH, DELETE) using REST APIs.


## 📱 Features

* Perform HTTP requests:

  * POST
  * PUT
  * PATCH
  * DELETE
* Display API response and status code
* Loading indicator during API calls
* Clean and responsive UI using Grid layout


## 🛠 Tech Stack

* Flutter
* Dart
* http package

## 📦 Dependencies

dependencies:
  flutter:
    sdk: flutter
  http: ^1.2.0


## 📂 Project Structure

lib/
 └── screen/home_screen.dart

## ⚙️ How It Works

* Each button triggers a specific HTTP method
* API requests are handled using a reusable function
* Response and status code are displayed at the bottom
* Loading indicator is shown during network calls

## 🌐 API Used

* https://jsonplaceholder.typicode.com/posts

## 📸 Screenshots

(lib/screenshot/http_methods_screen.png) 

lib/screenshot/http_methods_screen.png

## ▶️ Run Project

flutter pub get

flutter run


## ✨ Future Improvements

* Add GET API with ListView
* Form input for POST requests
* Error handling UI (Snackbar)
* State management (Provider / Riverpod)
* Clean architecture (Service layer + DI)

## 👨‍💻 Author

Chandrakant Mali

## ⭐ Note

This project is created for learning API integration and understanding HTTP methods in Flutter.
