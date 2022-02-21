
// 이벤트가 발생했을 때 오래 기다려야 하는 경우 비동기 처리는 Future를 사용하고
// 스레드를 하나 더 생성해서 동시에 실행하고 싶을때는 isolate를 사용한다.

import 'dart:io';
import 'dart:isolate';

int num = 10;

void testIsolate(var msg){
  Future((){
    for(int i=0; i<5; i++){
      sleep(Duration(seconds: 1));
      print("testIsolate 함수 : ${i}");
    }
    num = 20;
  });
}

void check(var msg){
  print("check num : $num");
}

void main() {

  // isolate는 독립적인 스레드로 동작하기 때문에 각각의 독립적인 heap를 가지고 생성된다.
  // 그래서 한 파일에 전역변수를 하나 선언해서 여러 isolate를 선언해서 이 변수를
  // 공유하려 해도 할 수 없다. ( 전역변수라도 서로에게 영향을 줄 수 없다. )
  Isolate.spawn(testIsolate, "msg");
  Isolate.spawn(check, "msg"); // testIsolate에서 num값을 변화 시켜도 check에는 영향을 못 준다.
  for(int i=0; i<5; i++){
    sleep(Duration(seconds: 1));
    print("main 함수 : ${i}");
  }

  print("main() 종료");

}

