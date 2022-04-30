// my_onboarding_page.dart
// 외부 패키지를 이용해 on boarding screen 을 만든다.

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:onboarding_project/main.dart';

class MyOnBoardingPage extends StatelessWidget {
  const MyOnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // PageViewModel()위젯을 이용하여 각 화면을 구성하지만 그러기 전에 먼저
    // 전체 Introduction screen을 먼저 구성해야 한다.
    return IntroductionScreen(
      // 여러 페이지로 구성되기 때문에 여기서 리스트로 구현된다.
      pages: [
        PageViewModel(
          title: "Welcome to my app",
          body: "this is the first page"
              "We are making on-boarding screens."
              "한글도 나오나????",
          image: Image.asset("image/page1.png"),
          decoration: getPageDecoration(), // 커스텀 메서드를 이용해 데코레이션
        ),
        PageViewModel(
          title: "Welcome to my app",
          body: "this is the second page"
              "We are making on-boarding screens."
              "한글도 나오나????",
          image: Image.asset("image/page2.png"),
          decoration: getPageDecoration(), // 커스텀 메서드를 이용해 데코레이션
        ),
        PageViewModel(
          title: "Welcome to my app",
          body: "this is the third page"
              "We are making on-boarding screens."
              "한글도 나오나????",
          image: Image.asset("image/page3.png"),
          decoration: getPageDecoration(), // 커스텀 메서드를 이용해 데코레이션
        ),
      ],
      done: // 온보드 스크린의 마지막까지 보았을때 무엇을 할지 지정해 주는 버튼
          const Text("done"),
      // 위의 done 이라는 Text가 터치 되었을때 MyPage로 이동하도록 한다.
      onDone: () {
        //Navigator.of(context).push(
        // MyPage가 메인 페이지이기 때문에 상단에 뒤로 가기
        // 화살표 버튼이 보이면 안된다.
        // 그래서 push 대신 pushReplacement을 사용한다.
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const MyPage(),
          ),
        );
      },
      // 다음 페이지로 넘기는 버튼
      next: const Icon(Icons.arrow_forward),
      // 안보고 스킵할 수 있는 버튼
      showSkipButton: true,
      skip: const Text("skip"),
      // 화면 하단의 페이지 이동을 위한 dot 버튼 데코레이션
      dotsDecorator: DotsDecorator(
        color: Colors.cyan,
        size: const Size(10,10),
        activeSize: const Size(22,10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        // 선택된 버튼의 색 지정
        activeColor: Colors.redAccent,
      ),
      // 애니메이션 효과 주기
      curve: Curves.bounceOut,
    );
  }

  // 각 화면을 꾸밀 때 중복되는 내용은 여기서 일괄 관리할 수 있는 메서드를 만든다.
  PageDecoration getPageDecoration() {
    return const PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
      bodyTextStyle: TextStyle(
        fontSize: 22,
        color: Colors.white,
      ),
      imagePadding: EdgeInsets.only(top: 40),
      pageColor: Colors.orange,
    );
  }
}
