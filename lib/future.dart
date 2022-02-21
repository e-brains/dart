
// 1. 다트는 싱글스레드 방식이며 비동기처리는 이벤트루프 방식을 사용한다.
// 2. 이벤트 루프에 등록되면 main()이 종료되어야 실행된다.
// 3. 이벤트 루프(스케줄러)에는 등록되는 작업들이 따로 있다.
// 4. network 관련 작업
// 5. I/O(file 쓰기/읽기)
// 6. Future(이벤트루프에 등록해 놓고 main()이 종료된 후 실행할게 라는 약속)

import 'dart:io';

// 슬립은 정상적으로 5초 뒤에 순차처리 된다.
void testSleep(){
  sleep(Duration(seconds: 5));
  print("sleep 완료");
}

// testFuture() 완료 -> main() 종료 -> 이벤트루프 실행
void testFuture(){
  Future.delayed(Duration(seconds: 5),(){
    print("이벤트 루프 실행");
  });
  print("testFuture() 완료");
}

// 리턴을 받아서 처리하는 경우
// 5초뒤에 값을 받기 때문에 Future는 빈 박스 상태이다.
// 그래서 리턴값을 받는 변수도 Future 타입으로 선언한다.
Future<String> returnFuture(){
  Future<String> value = Future.delayed(Duration(seconds: 5),(){
    print("이벤트 루프 실행");
    return "사과";
  });

  return value;
}

void main() async{

  testSleep();
  testFuture();
  // Future로 선언되면 일단 빈 박스로 실행되고 나중에 이벤트루프에서
  // 종료되면 그때 값이 채워지기 때문에 await을 걸어서 받아야 한다.
  // 그리고 main() 함수에는 async임을 명시해야 한다.
  String value = await returnFuture(); // await는 5초뒤 리턴이 될 때 까지 기다린다.
  print(value);

  // 또다른 방법으로 then을 사용할 수 있다.
  // 이때에는 main() 함수에 async를 명시하지 않아도 된다.
  returnFuture().then((value) => print(value)); // 완료되면 실행하라는 의미

  print("main() 종료");

}

