
void main(){

WorldInterface korea = Korea();
korea.sayName();
korea.sayEnglish();

WorldInterface usa = Usa();
usa.sayName();
usa.sayEnglish();

// 추상클래스(인터페이스)를 다중으로 구현하는 경우 모든 메서드를 구현해서 사용하기 때문에
// 모든 메서를 가지고 있는 구현체 클래스를 타입으로 사용할 수 밖에 없다.
Japan japan = Japan();
japan.sayName();
japan.sayPosition();

// 일반 클래스를 상속을 통해 인터페이스처럼 사용할 수 있지만 메서드 구현에 대한 강제성이 없다.
Person dev = Developer();
dev.eat();

}

// 1. 추상 클래스는 추상 메서드를 가질 수 있다.
// 2. 추상 클래스는 미완성 클래스이기 때문에 객체를 생성할 수 없다.
// 3. 하지만 참조형 변수의 타입으로는 사용이 가능하다.
// 4. 자바의 인터페이스 역활을 수행할 수 있다.
// 5. 추상메서드 일반메서드 모두 정의할 수 있으며 호출부에서 반드시 오버라이드 해야함
// 6. 상속은 단 하나의 클래스만 가능하다. 하지만 추상 클래스는 여러 개를 임플리먼트 할 수 있다.
// 7. 이때 추상클래스를 타입으로 사용할 수 없다.
abstract class WorldInterface{
  void sayName(); // body가 없는 추상 메서드
  // body가 있는 일반 메서드
  void sayEnglish(){
    print("여기는 English 입니다.");
  }
}

abstract class PositionInterface{
  void sayPosition();
}

// 추상 클래스를 사용하기 위해서는 일반 클래스에서 implements 키워드로 임플리먼트 한 후에
// 반드시 추상 메서드를 오버라이딩 해야 한다.
class Korea implements WorldInterface{
  @override
  void sayName() {
    print("여기는 한국입니다.");
  }

  // @override는 생략 가능하다.
  // 일반 메서드도 반드시 override해야 함
  void sayEnglish() {
    print("재정의 : 여기는 Korea입니다.");
  }
}

class Usa implements WorldInterface{
  // @override는 생략 가능하다.
  void sayName() {
   print("여기는 미국입니다.");
  }

  @override
  void sayEnglish() {
    print("재정의 : 여기는 USA입니다.");
  }
}

// 다중 추상클래스(인터페이스)를 구현하는 경우 해당 추상클래스의 메서드를 모두 구현해야 함
class Japan implements WorldInterface, PositionInterface{
  @override
  void sayEnglish() {
    // TODO: implement sayEnglish
  }

  @override
  void sayName() {
    // TODO: implement sayName
  }

  @override
  void sayPosition() {
    // TODO: implement sayPosition
  }

}

class Person{
  eat(){}  // 내용없는 메서드 선언
}

// 클래스는 타입을 공유하기 위해 사용하는 경우가 더 많다.
// 일반 클래스를 상속 받아서 내용없는 메서드를 여기서 재정의해도 인터페이스 역활을 할 수 있음
class Developer extends Person{
  @override
  eat() {
    print("나는 개발자이고 밥을 먹는다.");
  }
}