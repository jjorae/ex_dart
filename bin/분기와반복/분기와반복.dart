void main() {
  // if else
  String text = 'hello';

  if(text is int) {
    print('정수');
  } else if(text is double) {
    print('실수');
  } else {
    print('정수도 실수도 아님');
  }

  // 삼항 연산 지원
  // [조건] ? [참일때] : [거짓일때]
  bool isRainy = true;
  var todo = isRainy ? '빨래안함' : '빨래함';
  print(todo);

  // switch case
  var status = Status.Authenticated;
  switch(status) {
    case Status.Authenticated:
      print('인증됨');
      break;
    case Status.Authenticating:
      print('인증처리중');
      break;
    case Status.Unauthenticated:
      print('미인증');
      break;
    case Status.Uninitialized:
      print('초기화됨');
      break;
  }

  // for
  var items = ['짜장', '라면', '볶음밥'];

  for(var i = 0; i < items.length; i++) {
    print(items[i]);
  }
}

enum Status { Uninitialized, Authenticated, Authenticating, Unauthenticated}