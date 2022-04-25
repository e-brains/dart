// study_container.dart
// 컨테이너의 특징에 대해 알아본다.

import 'package:flutter/material.dart';

class MyContainerStudy extends StatelessWidget {
  const MyContainerStudy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Colunm Widget Study"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: const MyContainer(), // Scaffold 하위에 클래스를 하나 더 둔다.
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // 위젯이 화면 밖으로 나가지 않도록 해준다.
      // 화면 전체를 차지하지만 child 속성에 위젯이 설정되면 그 크기만큼 줄어든다.
      // 높이 100 , 가로 100 픽셀을 줘도 그 크기만큼 줄어든다.
      child: Container(
        color: Colors.red,
        // 화면 가장자리로 부터 상하좌우 20픽셀 마진을 주고 컨테이너를 위치 시킨다.
        // 실제 마진은 Flutter Inspector 를 사용해서 확인할 수 있다.
        margin: const EdgeInsets.all(20.0),
        // padding 속성으로 컨테이너 내부에 마진을 줄 수 있다.
        // 컨테이너로 부터 상하좌우 20씩 떨어져서 child 를 위치 시킨다.
        padding: const EdgeInsets.all(20.0),
        child: const Text(
          "data",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
