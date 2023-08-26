void main() {
  var a = "ravi";
  var b = "kumar";
  print("$a $b");
  for (double i = 1.5; i < 5; i++) {
    print('hello ${i + 1}');
  }
  String name;
  name = "Paulo";
  print(name);
  var isTrue = true;
  print(isTrue);
  const r = 8.7;
  print("hello there ${a.toUpperCase()} ${b.toUpperCase()},you got $r points");
  if (!(a is! String)) {
    print("hlwwwwww");
  } else {
    print("noooooooooo");
  }
  for (var j = 0; j <= 10; j++) {
    if (j % 2 == 0) {
      print("$j");
    }
  }
  while (true) {
    print("going..");
    break;
  }
  do {
    print("hllw ravi");
  } while (r < 8.7);
}
