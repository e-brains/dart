// study_navigator.dart
// Navigator를 이용한 화면 이동
// Route개념, stack을 이용한 push, pop
// MaterialPageRoute 위젯 과 context

import 'package:flutter/material.dart';

class MyNavigatorStudy extends StatelessWidget {
  const MyNavigatorStudy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Page"),
        backgroundColor: Colors.teal,
      ),
      body: const MyFirstPage(), // Scaffold 하위에 클래스를 하나 더 둔다.
    );
  }
}

// 첫번째 route 생성
class MyFirstPage extends StatelessWidget {
  const MyFirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.blue, // background color
            onPrimary: Colors.white // foreground color
            ),
        onPressed: () {
          // second page 이동을 위한 route 정보 정의
          var route = MaterialPageRoute(
              builder: (BuildContext context) {
                  return MySecondPage();
                }
              );

          // route를 담당하는 Navigator 위젯을 호출한다.
          // Navigator가 stack에 second page를 넣기 위해 push함수 호출한다.
          // first page 위에 second page 정보를 쌓으려면 first page이 context정보와
          // second page의 route정보를 받아야 한다.
          Navigator.push(context, route);

          // 위 코드를 아래와 같이 축약
          // Navigator.push(context, MaterialPageRoute(
          //     builder: (context) => MySecondPage())
          // );
        },
        child: const Text(
          "Go to the Second Page",
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}

// 두번째 route 생성
class MySecondPage extends StatelessWidget {
  const MySecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.blue, // background color
              onPrimary: Colors.white // foreground color
              ),
          onPressed: () {
            // second page는 Navigator stack에서 pop하여 자기 자신을 제거하면 되기
            // 때문에 간단하다.
            // 여기서 firts page로 이동할 때는 second page로 이동하는 것이 아니라
            // first page 위에 쌓여 있던 second page를 제거함으로써 이동하는 효과를
            // 내는 것이다.
            Navigator.pop(context);
          },
          child: const Text(
            "Go to the First Page",
            style: TextStyle(fontSize: 24.0),
          ),
        ),
      ),
    );
  }
}
