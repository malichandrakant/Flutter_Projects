import 'package:flutter/material.dart';

import 'dart:convert';

import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String message = "Click any HTTP method";

  bool loading = false;
  String link = "https://jsonplaceholder.typicode.com/posts";

  String result = '';
  int statusCode = -1;

  Future<void> executeRequest(Future<http.Response> request) async {
    setState(() => loading = true);

    try {
      final response = await request;

      setState(() {
        statusCode = response.statusCode;
        result = response.body;
      });
    } catch (e) {
      setState(() {
        result = "Error: $e";
      });
    } finally {
      setState(() => loading = false);
    }
  }

  void postMethod() {
    executeRequest(
      http.post(
        Uri.parse(link),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({"title": "foo", "body": "bar", "userId": 1}),
      ),
    );
  }

  void putMethod() {
    executeRequest(
      http.put(
        Uri.parse("$link/1"),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({
          "id": 1,
          "title": "updated title",
          "body": "updated body",
          "userId": 1,
        }),
      ),
    );
  }

  void patchMethod() {
    executeRequest(
      http.patch(
        Uri.parse("$link/1"),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({"title": "patched title"}),
      ),
    );
  }

  void deleteMethod() {
    executeRequest(http.delete(Uri.parse("$link/1")));
  }

  void handleClick(String method) {
    setState(() {
      message = "$method clicked";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade50,

      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "HTTP Methods",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),

        child: Column(
          children: [
            Text(message, style: const TextStyle(fontSize: 18)),

            const SizedBox(height: 20),

            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  buildButton("POST", Colors.green, () {
                    handleClick("POST");
                    postMethod();
                  }),
                  buildButton("PUT", Colors.blue, () {
                    handleClick("PUT");
                    putMethod();
                  }),
                  buildButton("PATCH", Colors.orange, () {
                    handleClick("PATCH");
                    patchMethod();
                  }),
                  buildButton("DELETE", Colors.red, () {
                    handleClick("DELETE");
                    deleteMethod();
                  }),
                ],
              ),
            ),

            ListTile(
              title: const Text('Response'),
              subtitle: Text(
                result,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: loading
                  ? const CircularProgressIndicator()
                  : Text('Status: $statusCode'),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildButton(String text, Color color, VoidCallback onTap) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: const EdgeInsets.symmetric(vertical: 20),
        textStyle: const TextStyle(fontSize: 18),
      ),
      onPressed: onTap,
      child: Text(text),
    );
  }
}
