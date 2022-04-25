// study_column.dart
// Column 위젯은 복수의 자식 위젯을 세로로 나열하는 위젯이다.

import 'package:flutter/material.dart';

class MyColumnStudy extends StatelessWidget {
  const MyColumnStudy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Column Widget Study"),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.teal,
      ),
      body: SafeArea(
        // Column 위젯이 세로 정렬을 차지하고 있기 때문에 Center 위젯으로 감싸도
        // 좌우위아래 센터 정렬(화면의 정가운데)이 아니고 가로로만 센터 정렬이 된다.
        // 좌우위아래 센터 정렬(화면의 정가운데)이 되려면 mainAxisAlignment: 속성에
        // MainAxisAlignment.center를 적용해야 한다.
        // Column의 세로 정렬 시 Container가 차지하는 공간 이외에 위쪽으로 공백이 있는데
        // 이를 없애고 3개의 Container 공간만 적용하려면 mainAxisSize: 속셩에
        // MainAxisSize.min 을 적용하면 된다.
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // mainAxisSize: MainAxisSize.min,
            // 아레쪽으로 부터 1,2,3의 순서대로 쌓아 올리려면 VerticalDirection을 사용한다.
            //verticalDirection: VerticalDirection.up,
            // 세로로 동일한 간격을 두고 정렬
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // 가로 끝 정렬 (즉, 오른쪽 정렬)
            //crossAxisAlignment: CrossAxisAlignment.end,
            // Column의 자식들인 Container 들이 가로방향으로 화면을 꽉 채우게 한다.
            // stretch는 뻗어 나가라는 뜻
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 100,
                width: 80,
                color: Colors.green,
                child: const Text("Container 1"),
              ),
              // Container 사이에 공간을 두고 싶을때 투명박스를 두면 된다.
              // 세로방향 공백은 height 값을 주고 가로 공백시에는 width값을 주면 됨
              const SizedBox(
                height: 50,
              ),
              Container(
                height: 100,
                width: 50,
                color: Colors.blue,
                child: const Text("Container 2"),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
                child: const Text("Container 3"),
              ),
              // 높이를 주지 않으면 invisible 컨테이너가 된다.
              Container(
                width: double.infinity, // 넓이는 오른쪽 끝까지 라는 의미
              ),
            ],
          ),
        ),
      ),
    );
  }
}


