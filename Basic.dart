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
  int age = 19;
  if (age==19){
    print("You are old enough to buy cigrate");
  }
  else if(age==17){
    print("Sorry, You can't buy a cigrate");
    
  }
  else if(age==21){
    print("you are old enough");
  }
  
  switch(age){
    case 17:
      print("you are not allowed");
      break;
    case 21:
      print("you are allowed");
      break;
    case 19:
      print("its run by switch case you are allowed");
      break;
    default:
      print("Default $age");
  }
