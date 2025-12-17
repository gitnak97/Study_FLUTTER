mixin Strong {
  final double strengthLevel = 1500.99;
}

mixin QuickRunner {
  void runQuick() {
    print('ruuuuuuun!');
  }
}

mixin Tall {
  final double height = 1.99;
}

class Horse with Strong, QuickRunner {}

class Kid with QuickRunner {}

class Player with Strong, QuickRunner, Tall {}

void main() {
  var player = Player();
  print(player.strengthLevel);
  player.runQuick();
}
