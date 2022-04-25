// my_page.dart
// Builder 위젯을 이용한 Snack bar 구현
import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snack Bar Test"),
        centerTitle: true,
        elevation: 0.0,
      ),
      // Snack Bar 구현 시 Scaffold의 context를 찾기 위해 build 메서드를 구현한다.
      body: Builder(
        // MyPage의 context변수명과 구분하기 위해 ctx로 바꾼다.
        builder: (BuildContext ctx) {
          return Center(
            child: TextButton(
              child: const Text(
                "Show Me !",
                style: TextStyle(color: Colors.white),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              onPressed: () {
                ScaffoldMessenger.of(ctx).showSnackBar(
                  const SnackBar(
                    content: Text("======= Hello World ======="),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
