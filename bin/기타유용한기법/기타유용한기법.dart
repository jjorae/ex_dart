void main() {
  // 리스트에 6을 추가하고 2를 제거하여 출력
  final items = [1, 2, 3, 4, 5];

  var result = items;
  result.add(6);
  result.remove(2);
  print(result);

  // 계단식 표기법 .. 연산자를 사용하면 동일 객체에서 일련의 작업을 수행할 수 있음. 메서드를 수행한 객체의 참조를 반환.
  print(items..add(6)..remove(2));

  // 컬렉션 if
  // 조건에 의해 컬렉션의 값을 조정하거나 다르게 사용하고 싶을 때 일반적인 방법
  bool promoActive = false;

  if(promoActive) {
    print([1,2,3,4,5,6]);
  } else {
    print([1,2,3,4,5]);
  }

  // 컬렉션 if 사용하면
  print([1,2,3,4,5, if(promoActive) 6]);

  // 컬렉션 for
  var listOfInts = [1,2,3];
  var listOfStrings = [
    '#0',
    for(var i in listOfInts) '#$i'
  ];

  listOfStrings.forEach(print);

  // null 처리에 관한 기능
  String? name = null;

  // null 검사
  if(name != null) {
    print(name.length);
  }

  // null에 접근하면 에러
  // ? 쓰면 에러 대신 null 리턴
  print(name?.length);
  
  // ?? 연산자 : 객체가 null이면, 아니면 처리할 내용
  print(name?.length ?? 0); // name이 null이면 0 출력 아니면 length 출력
}