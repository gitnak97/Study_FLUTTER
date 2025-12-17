class Player {
  final String name;
  int xp, age;
  String team;

  Player.fromJson(Map<String, dynamic> playerJson)
    : name = playerJson['name'],
      xp = playerJson['xp'],
      team = playerJson['team'],
      age = playerJson['age'];

  void sayHello(String name, int xp) {
    print('Hello $name, you have $xp XP');
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
}
