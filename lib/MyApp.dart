
import 'package:flutter/material.dart';
import 'package:flutter_study06/MyCard.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 에뮬레이터 상단의 debug 배너를 없앤다.
      title: "MaterialApp의 title",
      theme: ThemeData(primarySwatch: Colors.indigo // 기본 색상 정의
          ),
      home: MyCard(),
    );
  }
}


