// 함수 정의에 {}로 감싼 매개변수는 선택적으로 사용 가능
// 호출 시 매개변수명을 값 앞에 써주면 됨
// 이름 있는 매개변수라고도 부름
void something({String name = '홍길동', int age = 18}) {
  print('$name는 $age세 입니다.');
}

// 필수, 선택 매개변수 섞어서 사용 가능
// 선택 매개변수는 기본값 없으면 에러가 난다.
void something1(String name, {int age = 18}) {
  print('$name는 $age세 입니다.');
}

void main() {
  something(name: '홍길동', age: 10);
  something();
}