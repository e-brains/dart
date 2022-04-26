// my_page_two.dart
// 두번째 page
import 'package:flutter/material.dart';
import 'package:flutter_study07/my_page_three.dart';

class MyPageTwo extends StatelessWidget {
  const MyPageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyPage Two"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Page Two 로 이동
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.blue, // background color
                  onPrimary: Colors.white // foreground color
              ),
              onPressed: () {
                Navigator.pushNamed(context, "/3");
              },
              child: const Text(
                "Go to Page Three",
                style: TextStyle(fontSize: 24.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}