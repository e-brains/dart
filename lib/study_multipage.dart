// study_multipage.dart
// Navigator를 이용한 여러개 화면 이동

import 'package:flutter/material.dart';
import 'package:flutter_study07/my_page_one.dart';

class MyMultiPage extends StatelessWidget {
  const MyMultiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Multi Page Handling"),
        backgroundColor: Colors.teal,
      ),
      body: const MyPageOne(), // Scaffold 하위에 클래스를 하나 더 둔다.
    );
  }
}


