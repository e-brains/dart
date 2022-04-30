// main.dart
// on-boarding screen 프로젝트 홈

import 'package:flutter/material.dart';
import 'package:onboarding_project/my_onboarding_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'On-boarding Project',
      home: MyOnBoardingPage(), // alt + enter를 쳐서 자동 import해 준다.
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Main Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Main Screen",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            ElevatedButton(
              // on boarding 페이지로 이동하도록 한다.
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const MyOnBoardingPage(),
                  ),
                );
              },
              child: const Text("Go to onboarding screen"),
            ),
          ],
        ),
      ),
    );
  }
}
