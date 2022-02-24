class Hero {
  String name = '영웅';

  void run() {
    print('run');
  }
}

// 기존 기능 재정의할 때 상속 사용. 상속은 포함관계를 만듬
class SuperHero extends Hero { // Hero를 상속
  // Hero의 run() 메서드 재정의
  @override
  void run() {
    super.run();
    fly();
  }

  void fly() {
    print('fly');
  }
}

void main() {
  var hero = SuperHero();
  hero.run();
  hero.fly();
  print(hero.name);
}