// snack_bar.dart
// Builder 위젯 없이 Snack Bar 구현 및 꾸미기

import 'package:flutter/material.dart';

class SnackBarStudy extends StatelessWidget {
  const SnackBarStudy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SnackBar without Builder "),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: const MySnackBar(), // Scaffold 하위에 클래스를 하나 더 둔다.
    );
  }
}

// Scaffold 하위에 두고 context를 찾기 위한 커스텀 클래스
class MySnackBar extends StatelessWidget {
  const MySnackBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.red, // background color
            onPrimary: Colors.blue // foreground color
            ),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(  // 텍스트 꾸미기
                " == SnackBar without Builder == ",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
              backgroundColor: Colors.teal,  // 스낵바의 백그라운드 색
              duration: Duration(milliseconds: 1000), // 1초간 메시지 유지
            ),
          );
        },
        child: const Text(
          "show me !",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}
