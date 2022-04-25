// study_row.dart
// Row 위젯은 복수의 자식 위젯을 가로로 나열하는 위젯이다.
// Row 위젯의 사용법은 Column 위젝과 동일하다.

import 'package:flutter/material.dart';

class MyRowStudy extends StatelessWidget {
  const MyRowStudy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Column Widget Study"),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.teal,
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 100,
            //width: 80,
            color: Colors.green,
            child: const Text("Container 1"),
          ),
          // Row는 가로 정렬이기 때문에 width 값만 준다.
          const SizedBox(
            width: 30.0,
          ),
          Container(
            height: 100,
            //width: 50,
            color: Colors.blue,
            child: const Text("Container 2"),
          ),
          Container(
            height: 100,
            //width: 100,
            color: Colors.red,
            child: const Text("Container 3"),
          ),
        ],
      ),
    );
  }
}


