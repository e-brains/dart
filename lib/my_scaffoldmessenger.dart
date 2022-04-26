// my_scaffoldmessenger.dart
// ScaffoldMessenger를 이용한 SnackBar 구현 및 화면간 메시지 공유

import 'package:flutter/material.dart';

class MyScaffoldMessengerApp extends StatelessWidget {
  const MyScaffoldMessengerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyScaffoldHomePage(),
    );
  }
}

class MyScaffoldHomePage extends StatelessWidget {
  const MyScaffoldHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Scaffold Home Page"),
      ),
      body: const MyScaffoldHomeBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // ScaffoldMessenger는 모든 Scaffold 정보를 가지고 있고
          // 여기서 가장 가까운 Scaffold를 찾게 된다.
          // MyScaffoldHomePage 위젯 아래에 있는 Scaffold 도 바로 찾게 된다.
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: const Text(
                "Like a Snack Bar !",
                style: TextStyle(fontSize: 18.0),
              ),
              duration: const Duration(seconds: 5),
              // SnackBar 오른쪽에 액션 버튼을 추가한다.
              action: SnackBarAction(
                  label: "Undo",
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MyScaffoldThirdPage(),
                        )
                    );
                  },
              ),
            ),
          );
        },
        child: const Icon(Icons.thumb_up),
      ),
    );
  }
}

class MyScaffoldHomeBody extends StatelessWidget {
  const MyScaffoldHomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MyScaffoldSecondPage(),
              ));
        },
        child: const Text(
          "Go to the Second Page",
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}

class MyScaffoldSecondPage extends StatelessWidget {
  const MyScaffoldSecondPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Scaffold Second Page"),
      ),
      body: const Center(
        child: Text(
          "좋아요가 추가되었습니다.",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.redAccent,
          ),
        ),
      ),
    );
  }
}

class MyScaffoldThirdPage extends StatelessWidget {
  const MyScaffoldThirdPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ScaffoldMessenger 로 감싸면 그 아래에 있는 root ScaffoldMessenger 기능은
    // 무력화 된다. (여기의 ScaffoldMessenger는 새로 생성되었기 때문에 정보가 없음)
    return ScaffoldMessenger(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("My Scaffold Third Page"),
        ),
        body: Builder(
          // 여기서 Builder를 통해서 새로운 위젯이 생성되면서 context가 자동으로 주어진다.
          // 이 context 를 가지고 위로 Scaffold를 찾게 된다. (기존 SnadkBar와 동일)
          builder: (context) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "'좋아요'를 취소하시겠습니까?",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.redAccent,
                    ),
                  ),
                  ElevatedButton(
                      onPressed: (){
                        // 위에서 ScaffoldMessenger로 감싸면서 무력화 됨
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text("'좋아요'가 취소 되었습니다.",
                                  style: TextStyle(fontSize: 18.0),),
                              duration: Duration(seconds: 3),
                            ));
                        // 취소 메시지 보여주면서 홈페이지로 되돌아 가기
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => const MyScaffoldHomePage()
                        ),);
                      },
                      child: const Text("취소하기",
                        style: TextStyle(fontSize: 18.0),),
                  )
                ],
              ),
            );
          }
        ),
      ),
    );
  }
}
