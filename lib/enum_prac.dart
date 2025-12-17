enum Team { red, blue, green }

class Player {
  String name;
  int xp;
  Team team;

  Player({required this.name, required this.xp, required this.team});

  void sayHello(String name, int xp) {
    print('Hello $name, you have $xp XP');
  }

  void sayHi() {
    print('Hi $name, you are on team $team');
  }
}

void main() {
  var player = Player(name: 'lynn', xp: 1200, team: Team.red);
  player.sayHello(player.name, player.xp);

  var potato = player
    ..name = 'potato'
    ..xp = 2000
    ..team = Team.green;
  potato.sayHi();
}
