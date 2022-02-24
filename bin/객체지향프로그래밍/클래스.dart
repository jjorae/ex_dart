/**
 * 클래스, 접근 지정자, 생성자, 게터, 세터
 */
class Person {
  // dart의 변수는 기본으로 non-nullable
  // nullable로 선언하려면 ? 붙여야함
  // 선언과 동시에 초기화하지 못하면 late 키워드를 앞에 붙임. null인 상태로 이용되지는 않지만 앱이 실행되면서 초기값 결정
  String? name;
  int age = 0;

  // 접근지정자 변수명 앞에 _기호를 붙이면 외부에서 접근 불가
  int _level = 1;

  // 생성자
  Person({this.name, this.age = 0}); // 생성자

  // 메서드 선언
  void addOneYear() {
    age++;
  }

  // getter, setter
  int get level => _level;
  set level(int level) => _level = level;
}

void main() {
  var person = new Person();
  var person2 = Person(); // new 키워드 생략
  var person3 = Person(name: '홍길동', age: 18);

  person.name = '홍길동';
  person.age = 10;

  print(person.name); // 인스턴스 뒤에 .을 붙여서 변수에 접근
  print(person.age);
  person.addOneYear();
  print(person.age);
  print(person._level); // 접근 불가라는데 왜 되지? 아 같은 파일 내에서는 호출됨
  print(person.level); // getter로 private 변수 호출
  person.level = 3;
  print(person.level);
}