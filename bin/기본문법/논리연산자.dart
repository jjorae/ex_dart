void main() {
  /**
   * && : 그리고
   * || : 또는
   * == : 같다
   * ! : 부정
   * != : 다르다
   */
  print(true && true); // true
  print(true && false); // false
  print(false && false); // false

  print(true || true); // true
  print(true || false); // true
  print(false || false); // false

  print(true == true); // true
  print(true == false); // false
  print(false == false); // true

  print(true != true); // false
  print(true != false); // true
  print(false != false); // false
}