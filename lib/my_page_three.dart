// my_page_three.dart
// 세번째 page
import 'package:flutter/material.dart';

class MyPageThree extends StatelessWidget {
  const MyPageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyPage Three"),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.blue, // background color
              onPrimary: Colors.white // foreground color
          ),
          onPressed: () {
            Navigator.pushNamed(context, "/");
          },
          child: const Text(
            "Go to MyPage One",
            style: TextStyle(fontSize: 24.0),
          ),
        ),
      ),
    );
  }
}