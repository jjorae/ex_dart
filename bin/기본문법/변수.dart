void main() {
  /**
   * int : 정수
   * double : 실수(소수점)
   * String : 문자열
   * bool : 참 또는 거짓
   */

  // 문자열
  String name; // 변수 선언
  name = '홍길동'; // 값 할당. 작은 따옴표가 표준.
  name = "홍길동"; // 큰따옴표
  print(name);

  bool b = true; // 참, false : 거짓
  bool nameIsEmpty = name.isEmpty;
  print(b);
  print(nameIsEmpty);

  int i = 10; // 정수
  double d = 10.0; // 실수

  // int, double은 num 타입에 포함
  num ni = 10;
  num nd = 10.0;

  // 더 큰 자료형인 double 타입에서 int 타입으로 자동 형변환을 지원하지 않음
  // double d = i; // 에러
  // num 타임에는 int, double 모두 대입 가능
  num anynum = i;
  anynum = d;
}