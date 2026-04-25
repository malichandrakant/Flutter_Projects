import 'dart:convert';
import 'package:http/http.dart' as http;
import 'single_post_model.dart';

class ApiServices {
  Future<SinglePostWithModel?> getSinglePostWithModel() async {
    try {
      var response = await http.get(
        Uri.parse("https://jsonplaceholder.typicode.com/posts/1"),
      );
      print("Status Code: ${response.statusCode}");
      print("Body: ${response.body}");
      if (response.statusCode == 200) {
        return SinglePostWithModel.fromJson(json.decode(response.body));
      } else {
        print("Error: ${response.statusCode}");
      }
    } catch (e) {
      print("Exception: $e");
    }
    return null;
  }
}
