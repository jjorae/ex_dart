void main() {
  // 형변환에는 as 키워드 사용(더 상위 개념으로 변환 가능)
  var c = 30.5;
  int d = c as int; // 에러(int와 double 모두 num을 구현하는 타입이지만 서로 관계 없으므로 형변환 불가)

  // 상위 개념인 num으로 형변환 가능
  dynamic dy = 30.5;
  num n = d; // as num; 생략 가능
}