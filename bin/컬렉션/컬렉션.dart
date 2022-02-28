/**
 * Dart에서 제공하는 컬렉션
 * - List : 같은 타입의 자료를 여러 개 담을 수 있고 특정 인덱스로 접근할 수 있음
 * - Map : 키와 값의 쌍으로 저장할 수 있고 키를 통해 값을 얻을 수 있음
 * - Set : 중복이 허용되지 않고 찾는 값이 있는지 없는지 판단하고자 할 때 사용
 */
void main() {
  // List - 순서가 있는 자료를 담는 컬렉션(Dart에서는 배열 제공 안함)
  List<String> items = ['짜장', '라면', '볶음밥'];

  // 컬렉션도 타입추론 사용 가능
  var items2 = ['짜장', '라면', '볶음밥'];

  // dynamic이라는 특수한 타입으로 여러 타입을 한 리스트에 저장 가능. var로 해도됨
  List<dynamic> items3 = ['짜장', 1, 2, 3];

  // 배열처럼 접근해서 사용 가능
  print(items[0]);
  items[0] = '떡볶이';
  print(items[0]);

  // 모든 원소 출력
  for(var i = 0; i < items.length; i++) {
    print(items[i]);
  }

  // 스프레드 연산자(...) - 컬렉션 안에 다른 컬렉션 삽입
  var items4 = ['떡볶이', ...items, '순대'];
  print(items4);

  // Set에서도 사용 가능
  var items5 = {'떡볶이', ...items, '순대'};
  print(items5);

  // Map - 순서가 없고 탐색이 빠른 자료구조 컬렉션. 키와 값의 쌍으로 이루어져 키를 이용해 값 조회
  Map<String, String> myMap = {
    '한국': '부산', 
    '일본': '도쿄', 
    '중국': '북경'
  };

  // 타입추론 가능
  var myMap1 = {
    '한국': '부산', 
    '일본': '도쿄', 
    '중국': '북경'
  };

  print(myMap);

  print(myMap['한국']);
  // 키를 이용해 수정
  myMap['한국'] = '서울';
  print(myMap['한국']);

  // 없는 키 조회하면 null
  print(myMap['미국']);

  // 값 추가
  myMap['미국'] = '워싱턴';
  print(myMap['미국']);

  // Set - 집합을 표현하는 자료구조 컬렉션. 중복 안됨.
  Set<String> mySet = {'서울', '수원', '오산', '부산'};

  // 역시 타입추론 사용 가능
  var mySet1 = {'서울', '수원', '오산', '부산'};

  print(mySet);

  // add 함수로 추가
  mySet.add('안양');
  print(mySet);

  // remove 함수로 삭제
  mySet.remove('수원');
  print(mySet);

  // contains로 포함여부 확인 가능
  print(mySet.contains('서울'));

  // !주의 - 빈 Set, 빈 Map 작성 시 {}로 선언하면 Map으로 인식
  Set<String> mySet2 = {};
  var mySet3 = <String>{};
  var mySet4 = {}; // Map<dynamic, dynamic>
}