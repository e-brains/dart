void main() {

// 반복문 ( 배열의 복사 )

// 기본 반복 : 일반 for문, for in문
// 반복 후 리턴 : map
// 반복 후 어떤 값을 걸러내고 싶으면 :  where

  void main() {
    var list = [1, 2, 3, 4];

    // 기본 반복문 for 문
    for (var i = 0; i < list.length; i++) {
      print(list[i]);
    }
    print("=====");

    // for in 문 (list라는 배열의 끝까지 돌것이라면 ...)
    for (var e in list) {
      print(e);
    }
    print("=====");

    // forEach 문 - 추천하지 않음.
    list.forEach((e) => print(e)); // 좋지 않음.
    print("=====");

    list.forEach((e) {
      print(e);
    }); // 좋음.
    print("=====");

    // 배열 복사하기.............

    // 얕은 복사
    var newList = list; // 주소 복사
    print(newList);
    print("=====");

    // 얕은복사 (값이 복사되는게 아니라 원래 래퍼런스를 참조해서 map안의 함수가 연산되서 결과가 나옴
    var mapList = list.map((e) {
      if (e != 2) {
        return e;
      }
    });
    print(mapList);
    print(mapList.toList());
    print("====2222=");

    // 깊은 복사 ( 스프레드(흩뿌리다) 연산자 )
    var spreadList = [10, ...list, 100]; // 1,2,3,4
    print(spreadList);
    print("=====");

    // 배열에서 어떤 값을 필터링 한 뒤 깊은 복사하는 법 1,2,3,4
    var filterList = list.where((e) => e != 2);
    print(filterList);
  }


}



