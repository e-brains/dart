// toast_message.dart
// Toast message 구현하기
// fluttertoast 라이브러리를 먼저 pubspec.yaml 파일에 등록한 후 import 한다.

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastMessageStudy extends StatelessWidget {
  const ToastMessageStudy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Toast Message"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: TextButton(
          onPressed: (){
            // 토스트 메시지는 위젯 트리와는 상관없기 때문에 함수만 호출해 주면 된다.
            flutterToast();
          },
          child: const Text(
            "show me toast",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
            ),
          ),
          style: TextButton.styleFrom(
            backgroundColor: Colors.blue,
          ),
        ),
      ),
    );
  }
}

// 리턴값과 인자가 없는 toast message를 보여주는 함수를 만든다.
void flutterToast() {
  Fluttertoast.showToast(
    msg: "Flutter Toast Message",
    gravity: ToastGravity.BOTTOM,    // 토스트 메시지의 위치를 지정한다
    backgroundColor: Colors.redAccent,
    fontSize: 20.0,    // 메시지 폰트 지정
    textColor: Colors.white,
    toastLength: Toast.LENGTH_SHORT, // 메시지 지속 시간
  );
}
