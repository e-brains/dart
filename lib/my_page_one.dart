// my_page_one.dart
// 첫번째 page
import 'package:flutter/material.dart';

class MyPageOne extends StatelessWidget {
  const MyPageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyPage One"),
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
                // MaterialApp에서 페이지 맵을 정의했으니 호출해서 사용하는 곳은 아래와
                // 키 값을 이용하여 이동하고자 하는 페이지를 넣어 준다.
                Navigator.pushNamed(context, "/2");
              },
              child: const Text(
                "Go to Page Two",
                style: TextStyle(fontSize: 24.0),
              ),
            ),

            // Page Three 로 이동
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
