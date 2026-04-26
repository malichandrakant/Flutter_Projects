# 📱 Flutter URL Launcher Demo

A simple Flutter application demonstrating how to use the `url_launcher` package to perform common actions like making phone calls, sending emails, SMS, and opening web links.

## 🚀 Features
* 🌐 Open website links
* 📞 Make phone calls
* 📧 Send emails
* 💬 Send SMS

* Clean and simple UI for demonstration

## 🛠 Tech Stack

* Flutter
* Dart
* url_launcher package

## 📦 Dependencies
dependencies:
  flutter:
    sdk: flutter
  url_launcher: ^6.2.5

## 📂 Project Structure
lib/
 └── home/home_screen.dart
 └── main.dart

## ⚙️ How It Works

* Uses `url_launcher` to trigger platform-specific actions
* Each button calls a different URL scheme:
  * `https:` → web link
  * `tel:` → phone call
  * `mailto:` → email
  * `sms:` → message

* Handles launching using `launchUrl()`
## 📸 Screenshots
(lib/screenshot/quick_contact_screen.png) 
## ▶️ Run Project

flutter pub get
flutter run

## ✨ Future Improvements

* Add error handling (cannot launch cases)
* Add input fields for dynamic data
* Improve UI/UX
* Add platform-specific handling

## 👨‍💻 Author
Chandrakant Mali
