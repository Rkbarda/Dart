main() {
  dosomething();
  print("hllw ${getName()}${lastName()} ");
  var getdata = pera(a);
  var getdata1 = "${pera(a)}";

  print(" all perameter fetched $getdata $getdata1");
}

String a = "Ravi";
dosomething() {
  print("hllw Functions");
  sayMyName();
}

sayMyName() {
  print("ravi");
}

String getName() {
  return "Ravi";
}

String lastName() => "Kumar";

String pera(String data) {
  print(data);
  return data;
}
