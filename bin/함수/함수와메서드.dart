// 최상위 함수(가장 바깥에 작성한 함수)
bool isEven(int number) {
  return number % 2 == 0;
}

void main() {
  print(isEven(10));
  var myClass = MyClass();
  print(myClass.isEven(10));
  print(MyClass.isEven2(10));

  Person person = Person('james', age: 40);
  person.greeting();
}

class MyClass {
  // 메서드
  bool isEven(int number) {
    return number % 2 == 0;
  }

  // static이 붙으면 정적 메서드가 됨.
  static bool isEven2(int number) {
    return number % 2 == 0;
  }
}

class Person {
  String name;
  int age;

  // default 값을 안주면 에러가 나는 듯
  Person(this.name, {this.age = 0});

  void greeting() {
    print('안녕하세요 저는 $name입니다.');
  }
}