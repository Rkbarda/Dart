import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginState();
  }
}

class LoginState extends State {
  final TextEditingController _userController = TextEditingController();

  final TextEditingController _passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login",
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Container(
        alignment: Alignment.center,
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            //image icon
            Image.asset(
              "images/face.png",
              width: 90.0,
              height: 90.0,
              color: Colors.lightGreenAccent,
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 180.0,
              width: 380.0,
              color: Colors.white,
              child: Column(
                children: [
                  TextField(
                    textAlign: TextAlign.center,
                    controller: _userController,
                    decoration: InputDecoration(
                        hintText: "Username", icon: Icon(Icons.person)),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextField(
                    textAlign: TextAlign.center,
                    controller: _passController,
                    decoration: InputDecoration(
                        hintText: "Password", icon: Icon(Icons.lock)),
                    obscureText: true,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Container(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  child: TextButton(
                                onPressed: () => debugPrint("PRessed"),
                                child: Text("Login"),
                              )),
                              Container(
                                  child: TextButton(
                                onPressed: () => debugPrint("PRessed"),
                                child: Text("Clear"),
                              ))
                            ],
                          )),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              child: Center(
                child: Text(
                  "Welcome, Ravi",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
