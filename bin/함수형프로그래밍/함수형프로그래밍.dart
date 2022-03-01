/**
 * 함수형 프로그래밍(Functional Programming)
 * 자료 처리를 수학적 함수의 계산으로 취급하는 프로그래밍 패러다임 (상태와 가변 데이터를 기피)
 */
import 'dart:math';

// 일급 객체 : 함수를 값으로 취급. 다른 변수에 함수를 대입할 수 있음.
void greeting(String text) {
  print(text);
}

// 다른 함수의 인수로 함수 자체를 전달하거나 함수를 반환받을 수 있음
void something(Function(int i) f) {
  f(10);
}

void myPrintFunction(int i) {
  print('내가 만든 함수에서 출력한 $i');
}

void main() {
  var f = greeting; // 함수를 다른 변수에 대입
  f('hello');

  something((i) => print(i));

  something(myPrintFunction); // 내가 만든 함수에서 출력한 10
  something((i) => myPrintFunction(i)); // 내가 만든 함수에서 출력한 10
  something((i) => print(i)); // 10
  something(print); // 10

  // for 문과 forEach() 함수
  final items = [1, 2, 3, 4, 5];

  // 외부 반복
  for(var i = 0; i < items.length; i++) {
    print(items[i]);
  }

  // forEach 함수는 (E element) {} 형태의 함수를 인수로 받음
  // E는 모든 타입이 가능하다는 것을 의미
  // 내부 반복
  items.forEach(print);

  // 익명함수로 표현하면
  items.forEach((element) {
    print(element);
  });

  // 람다식으로 표현하면
  items.forEach((element) => print(element));

  // where : 조건을 필터링할 때 사용하는 함수
  // 짝수만 출력하는 예제 (for, if문 사용)
  for(var i = 0; i < items.length; i++) {
    if(items[i] % 2 == 0) {
      print(items[i]);
    }
  }

  // where함수 사용
  items.where((element) => element % 2 == 0).forEach(print);

  // map : 반복되는 값을 다른 형태로 변환하는 방법을 제공하는 함수
  // 짝수를 찾아 숫자라는 글자를 앞에 붙여 출력하는 예제
  for(var i = 0; i < items.length; i++) {
    if(items[i] % 2 == 0) {
      print('숫자 ${items[i]}');
    }
  }

  // map 함수를 사용하면
  items.where((element) => element % 2 == 0).map((e) => '숫자 $e').forEach(print);

  // toList
  // 함수형 프로그래밍을 지원하는 함수 대부분은 Iterable<T> 라는 인터페이스 타입 인스턴스 반환
  // toList() 함수는 where, map과 같이 Iterable 인터페이스를 반환하는 메서드에서 사용
  // 결과를 리스트로 저장하는 예제
  final result =[];
  items.forEach((element) {
    if(element % 2 == 0) {
      result.add(element);
    }
  });

  // toList로 간단하게 변환
  final resultList = items.where((element) => element % 2 == 0).toList();

  // toSet : 리스트에 중복된 데이터가 있을 경우 중복을 제거
  final dup_items = [1,2,2,3,3,4,5];

  var toSetResult = [];
  var temp = <int>{}; // 중복 제거를 위한 Set
  for(var i = 0; i < items.length; i++) {
    if(items[i] % 2 == 0) {
      //toSetResult.add(items[i]);
      temp.add(items[i]);
    }
  }
  toSetResult = temp.toList();
  print(toSetResult);

  // where 함수를 사용하면?
  final resultWithWhere = items.where((element) => element % 2 == 0).toSet().toList();

  // any : 리스트에 특정 조건을 충족하는 요소가 있는지 검사
  var anyCheck = false;
  for(var i = 0; i < items.length; i++) {
    if(items[i] % 2 == 0) {
      anyCheck = true; // 짝수가 하나라도 있으면 true
      break;
    }  
  }
  print(anyCheck);

  // any 사용하면?
  print(items.any((element) => element % 2 == 0));

  // reduce : 반복 요소를 줄여가면서 결과를 만들 때 사용
  // 리스트에서 최댓값을 구할 때 순차적으로 비교하는 예제
  // dart:math 패키지 필요. : max(), min() 등 다양한 수학 함수를 제공
  var maxResult = items[0];
  for(var i = 1; i < items.length; i++) {
    maxResult = max(items[i], maxResult);
  }
  print(maxResult);

  // reduce 함수를 사용하면
  // [타입]([타입] value, [타입] element) 형태의 함수를 정의해야 함
  print(items.reduce((value, element) => max(element, value)));
  print(items.reduce(max));
}