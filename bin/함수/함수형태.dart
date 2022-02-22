void main() {
  var result = f(10);

  print(result);
  print(f1(10, 10));
  print(f2());
  f3(40);
  f4('World');
  print(f5('world'));
  print(f6('test'));
}

int f(int x) {
  return x + 10;
}

// 매개변수 두개 (오버로딩 안되는 듯, 매개변수를 선택적으로 받을 수 있음)
int f1(int x, int z) {
  return x + z + 10;
}

// 매개변수 없는 함수
String f2() {
  return '안녕하세요';
}

// 반환값이 없는 함수
void f3(int x) {
  print(x);
}

// 반환 타입도 타입 추론에 의해 생략 가능
f4(String greet) {
  print('hello $greet');
}

// 문자열 앞에 $를 붙여서 변수 삽입 가능
f5(String greet) {
  return 'hello $greet';
}

// $ 기호 뒤에 {}로 감싸 수식 및 각종 표현식 사용 가능
f6(String x) {
  return 'length ${x.length}';
}