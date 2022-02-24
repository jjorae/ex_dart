// 추상 클래스는 추상 메서드를 포함하는 클래스
// 추상 메서드는 선언만 되고 정의가 없는 메서드
import '상속.dart';

abstract class Monster {
  void attack();
}

abstract class Flyable {
  void fly();
}

class Goblin implements Monster {
  @override
  void attack() {
    print('고블린 어택');
  }
}

// 여러 추상 클래스를 한번에 implement 가능
class Bat implements Monster, Flyable {
  @override
  void attack() {
    print('할퀴기!');
  }

  @override
  void fly() {
    print('펄럭펄럭!');
  }
}

// 믹스인
// with 키워드를 사용하면 상속하지 않고 다른 클래스의 기능을 가져오거나 override 할 수 있음
class DarkGoblin extends Goblin with Hero {
  
}

void main() {
  var goblin = Goblin();
  var bat = Bat();
  goblin.attack();
  bat.attack();
  bat.fly();
}