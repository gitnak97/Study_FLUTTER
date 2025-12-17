class Player {
  String name;
  int xp, age;
  String team;

  Player({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });

  Player.fromJson(Map<String, dynamic> playerJson)
    : name = playerJson['name'],
      xp = playerJson['xp'],
      team = playerJson['team'],
      age = playerJson['age'];

  void sayHello(String name, int xp) {
    print('Hello $name, you have $xp XP');
  }

  void sayHi() {
    print('Hi $name, you are on team $team and you are $age years old');
  }
}

void main() {
  var apiData = [
    {'name': 'lynn', 'xp': 1200, 'team': 'red', 'age': 12},
    {'name': 'nico', 'xp': 1500, 'team': 'blue', 'age': 14},
    {'name': 'dal', 'xp': 800, 'team': 'red', 'age': 10},
  ];

  apiData.forEach((playerJson) {
    var player = Player.fromJson(playerJson);
    player.sayHello(player.name, player.xp);
  });

  /*****************************같은 의미를 가짐*************************** */
  // cascade notation
  var players = Player(name: 'lynn', xp: 1200, team: 'red', age: 12)
    ..name = 'nakhoon'
    ..xp = 288
    ..team = 'maple'
    ..age = 29
    ..sayHi();

  var hackerman = players
    ..name = 'hackerman'
    ..xp = 9999
    ..team = 'black'
    ..age = 0
    ..sayHi();
  hackerman = hackerman;

  var player2 = Player(name: 'nico', xp: 1500, team: 'blue', age: 14);
  player2.name = 'dal';
  player2.xp = 400;
  player2.team = 'green';
  player2.age = 10;
  /********************************************************************* */
}
