// my_app.dart
import 'package:flutter/material.dart';
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
      home: const MyNavigatorStudy(),
    );
  }
}
