// my_app.dart
import 'package:flutter/material.dart';
import 'package:flutter_study07/my_page_one.dart';
import 'package:flutter_study07/my_page_three.dart';
import 'package:flutter_study07/my_page_two.dart';
import 'package:flutter_study07/study_multipage.dart';

//import 'package:flutter_study07/study_column.dart';
import 'package:flutter_study07/study_navigator.dart';

//import 'package:flutter_study07/study_row.dart';
//import 'package:flutter_study07/study_container.dart';
//import 'package:flutter_study07/snack_bar.dart';
//import 'package:flutter_study07/toast_message.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "flutter study 07",
      theme: ThemeData(primarySwatch: Colors.blue),
      //home: const MyMultiPage(),

      // 처음 출력될 화면을 '/'로 표현함 (웹의 root와 유사한 의미)
      initialRoute: "/",
      // 조작할 페이지들을 맵으로 정의한다.
      // 맵의 키 값은 반드시 첫 글자에 ‘/’를 붙여서 만든다.
      routes: {
        // context를 가지고 MyPageOne을 빌더를 이용하여 호출하라는 의미
        '/': (context) => MyPageOne(),
        '/2': (context) => MyPageTwo(),
        '/3': (context) => MyPageThree(),
      },
    );
  }
}

class MyAppTest extends StatelessWidget {
  const MyAppTest({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // MaterialApp 위젯 하위의 현재 context를 가지고 빌더 위젯을 통해
      // 새로운 Center 위젯을 생성하면 Center 위젯의 context를 가지고
      // 상위로 가면서 결국 MaterialApp 을 찾게 된다.
      home: Builder(
        builder: (context) {
          return Center(
            child: ElevatedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(
                  builder: (context) => MySecondPage())),
              child: const Text("Go to the Second Page"),
            ),
          );
        }
      ),
    );
  }
}




