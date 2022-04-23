
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[800], // 전체 뼈대 화면의 배경색 지정
      appBar: AppBar(
        // MaterialApp에서 title은 앱을 총칭하는 제목이며 화면에 보이지 않음
        // Scaffold는 실제 화면상에 나타나기 땜에 text 위젯을 사용한다.
        title: Text("Charactor Card"),
        centerTitle: true,
        backgroundColor: Colors.amber[900],
        elevation: 0.0, // appBar가 떠있는 효과를 없앤다.
      ),
      body: Padding(
        // 특정 위치로 부터 위젯을 위치 시키기 위해 사용
        padding: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
        child: Column(
          // padding 내에서 Column이 위치하고 그 내부에 위젯을 세로로 정렬함
          //mainAxisAlignment: MainAxisAlignment.center,  // 세로축 가운데 정렬
          crossAxisAlignment: CrossAxisAlignment.start, // 가로축 정렬 (시작점 외쪽 정렬)
          children: [
            Padding(
              // 이미지를 가운데 정확하게 보이기 위해  패딩으로 위치 조정
              padding: const EdgeInsets.fromLTRB(120, 10, 0.0, 0.0),
              // 동그란 모양의 이미지 삽입용 위젯
              child: CircleAvatar(
                // pubspec.yaml에 등록된 이미지 경로
                backgroundImage: AssetImage("assets/flutter_bear.png"),
                radius: 50.0, // 원모양의 크기를 조절
              ),
            ),
            // 이미지와 텍스트 사이에 구분을 위해 사용한다.
            Divider(
              // height는 위로는 이미지로 부터 15픽셀, 아래로는 텍스트로 부터 15픽셀 떨어져 있다는 의미
              height: 30.0,
              color: Colors.grey[850],
              thickness: 0.5,
              endIndent: 20.0,
            ),
            Text(
              "Name",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              height: 10.0, // 글자간의 세로 간격을 준다.
            ),
            Text(
              "Baby Bears",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Text(
              "Power Level",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              height: 10.0, // 글자간의 세로 간격을 준다.
            ),
            Text(
              "14",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              // 복수의 위젯을 가로로 나열할 때 (Column은 세로)
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0, // 가로로 공백을 준다.
                ),
                Text(
                  "Using Lightsaber",
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
            Row(
              // 복수의 위젯을 가로로 나열할 때 (Column은 세로)
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0, // 가로로 공백을 준다.
                ),
                Text(
                  "face hero tattoo",
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
            Row(
              // 복수의 위젯을 가로로 나열할 때 (Column은 세로)
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0, // 가로로 공백을 준다.
                ),
                Text(
                  "fire flames",
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(120, 10, 0.0, 0.0),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/flutter_ant.png"),
                radius: 40.0,
                // 앱 배경색과 같은 색을 이미지 배경으로 사용하면 투명이미지 효과를 그대로 살릴 수 있음
                backgroundColor: Colors.amber[800],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
