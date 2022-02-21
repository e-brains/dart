void main() {
  // 기본 생성자
  Dog dog1 = new Dog("럭키1세", 10);
  print(dog1.name);
  // 도트를 이용한 별도 이름의 생성자.
  Dog dog2 = new Dog.origin();

  // 인스턴스 생성 시 new 생략가능
  // ..도트 두개를 통한 캐스케이드 (초기값 생성 등)
  Dog dog3 = Dog.origin()..age = 30
    .._name = "럭키3세"
    ..hello();

  print(dog3.name);
  print(dog3.age);

  // get set 접근 지정자를 사용할 경우 호출할 때 속성처럼 사용
  print(dog1.name); // getter
  dog1.name = "럭키2세";  // setter (변수에 값 넣는 것 처럼 보임)
  print(dog1.name); // getter


}

class Dog {
  //다트는 기본이 public이고 '_'를 붙이면 private
  //자바는 public이면 모든 클래스에서 접근가능이지만 다트는 모든 파일에서 접근 가능
  //자바는 private이면 다른 클래스에서 접근 불가, 해당 클래스만 접근 가능
  //다트는 private이면 다른 파일에서 접근 불가 , 해당 파일만 접근 가능
  String? _name; // 다른 파일의 클래스에서 접근 불가 , 같은 파일의 클래스는 접근 가능
  int? age;

  // 기본 생성자
  // Dog(String name, int age) {
  //   this._name = name;
  //   this.age = age;
  // }

  // 기본 생성자 축약형 (파라미터의 값이 바로 속성변수에 들어간다.)
  Dog(this._name, this.age){}

  // 파라미터가 틀리는 경우 dart는 오버로딩이 안되므로 '.'을 이용하여 이름을 틀리게 준다.
  // 이름있는 생성자
  Dog.origin() {}

  // 다트의 접근 지정자는 호출 시 마치 변수를 호출하는 것처럼 쓰기 위해 ()가 없음
  // get앞에 리턴 타입 String이 생략되면 default로 dynamic이 됨
  // dynamic으로 사용하려면 setter쪽도 파라미터 타입을 지정하지 말아야 한다.
  String get name {
    return _name!;
  }
  // 접근 지정자는 자바처럼 사용할 수도 있다.
  // String getName(){
  //   return _name;
  // }

  set name(String name) {
    _name = name;
  }

  hello() {
    _name = 'hello 메서드가 호출되면서 _name값에 본 문장이 들어감';
  }
}
