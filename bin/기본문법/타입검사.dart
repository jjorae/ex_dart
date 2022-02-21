void main() {
  /**
   * is : 같은 타입이면 true
   * is! : 다른 타입이면 true
   */
  int a = 10;
  if(a is int) {
    print('정수');
  }

  String text = 'hello';
  if(text is! int) {
    print('숫자가 아님');
  }
}