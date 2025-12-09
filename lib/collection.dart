void main() {
  var oldFriends = ['nico', 'lynn'];
  var newFriends = [
    'sarah',
    'jack',
    for (var friend in oldFriends) " VS $friend",
  ];
  print(newFriends);
}
