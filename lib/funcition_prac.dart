String sayHello({
  required String name,
  required int age,
  required String country,
}) => 'Hello, $name! you are $age years old from $country';

// far arrow function syntax for simple functions, 1 line code -> return
num plus(num a, num b) => a + b;

// positional optional parameter
String sayHi(String name, [int? age, String? country]) {
  return 'Hi, $name! you are $age years old from $country';
}

// named optional parameter
String sayHey({required String name, int? age, String? country}) {
  return 'Hey, $name! you are $age years old from $country';
}

// QQ operator example -> 좌항이 null 이 아니면 좌항 반환, null 이면 우항 반환
String capitalizeName(String? name) => name?.toUpperCase() ?? 'ANON';

typedef ListOfInts = List<int>;
typedef UserInfo = Map<String, String>;

ListOfInts reverseListOfNumbers(ListOfInts list) {
  var reversed = list.reversed;
  return reversed.toList();
}

String sayHiyo(UserInfo userInfo) {
  return "HI ${userInfo['name']} from ${userInfo['country']}";
}

void main() {
  print(sayHello(age: 12, country: 'Korea', name: 'lynn'));
  print(capitalizeName(null));

  String? name;
  name ??= 'nico'; // name 이 null 이면 'nico' 할당

  print(reverseListOfNumbers([1, 2, 3, 4, 5]));
  print(sayHiyo({"name": "nico", "country": "Korea"}));
}
