void main() {
  String name = 'Test';

  name = name;

  unusedFunction(name);
}

void unusedFunction(Object c) {}
