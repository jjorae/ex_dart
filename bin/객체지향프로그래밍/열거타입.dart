// 열거 타입 : 상수를 정의하는 특수한 형태의 클래스
enum Status { login, logout }

void main() {
  var authStatus = Status.login;

  switch(authStatus) {
    case Status.login:
      print('로그인');
      break;
    case Status.logout:
      print('로그아웃');
      break;
  }
}