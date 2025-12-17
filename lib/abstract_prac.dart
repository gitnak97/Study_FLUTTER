abstract class Human {
  void walk() {
    print('Human is walking');
  }
}

enum Team { red, blue, green }

enum XPLevel { beginner, medium, pro }

class Player extends Human {
  String name;
  XPLevel xp;
  Team team;

  Player({required this.name, required this.xp, required this.team});

  void sayHello(String name, XPLevel xp) {
    print('Hello $name, you have $xp XP, you are on team $team');
  }

  void sayHi() {
    print('Hi $name, you have $xp XP, you are on team $team');
  }
}

void main() {
  var player = Player(name: 'lynn', xp: XPLevel.beginner, team: Team.red);
  player.sayHello(player.name, player.xp);

  var potato = player
    ..name = 'potato'
    ..xp = XPLevel.pro
    ..team = Team.green;
  potato.sayHi();
}
