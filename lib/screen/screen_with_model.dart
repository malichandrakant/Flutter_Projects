import 'package:flutter/material.dart';
import 'package:single_data_api/screen/api_services.dart';
import 'package:single_data_api/screen/single_post_model.dart';

class ScreenWithModel extends StatefulWidget {
  const ScreenWithModel({super.key});

  @override
  State<ScreenWithModel> createState() => _ScreenWithModelState();
}

class _ScreenWithModelState extends State<ScreenWithModel> {
  bool isLoading = false;

  SinglePostWithModel? singlePostWithModel;

  // API Call Function
  void _getSinglePost() {
    setState(() {
      isLoading = true;
    });

    ApiServices()
        .getSinglePostWithModel()
        .then((value) {
          setState(() {
            singlePostWithModel = value;
            isLoading = false;
          });
        })
        .catchError((error) {
          print(error);
          setState(() {
            isLoading = false;
          });
        });
  }

  @override
  void initState() {
    super.initState();
    _getSinglePost();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "API for Single Post",
          style: TextStyle(fontSize: 23, color: Colors.white),
        ),
        backgroundColor: Colors.indigo,
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : singlePostWithModel != null
          ? Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "User ID: ${singlePostWithModel!.userId}",
                      style: const TextStyle(fontSize: 20),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      singlePostWithModel!.title ?? "",
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(singlePostWithModel!.body ?? ""),
                  ],
                ),
              ),
            )
          : const Center(child: Text("No Data Found")),
    );
  }
}
