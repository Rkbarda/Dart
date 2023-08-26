main(){
  dosomething();
  print("hllw ${getName()}${lastName()} ");
}

dosomething(){
  print("hllw Functions");
  sayMyName();
}
sayMyName(){
  print("ravi");
}

String getName(){
  return"Ravi";
}
String lastName()=> "Kumar";
