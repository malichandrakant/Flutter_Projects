# 📱 Single Post API Integration (Flutter)

This project demonstrates how to fetch and display a **single post from an API** using Flutter.
It is a beginner-friendly example of API integration, JSON parsing, and UI rendering.


## 🚀 Features

* Fetch data from REST API
* Parse JSON into Dart model
* Display data on UI
* Loading indicator while fetching data
* Error handling (basic)


## 🛠️ Tech Stack

* Flutter
* Dart
* HTTP package

## 🌐 API Used

* https://jsonplaceholder.typicode.com/posts/1

## 📂 Project Structure

lib/
│
├── screen/
│   ├── api_services.dart       # API calling logic
│   ├── single_post_model.dart # Model class
│   └── screen_with_model.dart # UI screen
│
└── main.dart

## 📸 Screenshots

### 🔹 Output Screen

(lib/screenshot/single_post.png)

## ⚙️ Setup Instructions

1. Clone the repository

git clone <single_data_api>

2. Navigate to project

cd single_data_api

3. Install dependencies

flutter pub get

4. Run the app

flutter run


## 🧠 Learning Outcomes

* Understanding API integration in Flutter
* Working with `Future` and async/await
* JSON decoding and model creation
* State management using `setState()`

## ❗ Important Notes

* Ensure internet permission is added in AndroidManifest.xml:

<uses-permission android:name="android.permission.INTERNET"/>

## 🙌 Author

Chandrakant Mali

## ⭐ Future Improvements

* Add multiple posts (List API)
* Use FutureBuilder
* Add error UI
* Implement POST API
