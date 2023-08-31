import 'dart:html';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  void _onPress() {
    print("Search Pressed");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent.shade400,
        title: Text("Fency Day"),
        actions: [
          IconButton(
              onPressed: () => debugPrint("Icon Tapped"),
              icon: Icon(Icons.send)),
          IconButton(onPressed: _onPress, icon: Icon(Icons.search))
        ],
      ),
//other properties
      backgroundColor: Colors.cyanAccent,
      body: new Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hello Ravi",
              style: TextStyle(
                  color: Colors.amberAccent.shade700,
                  fontSize: 44.5,
                  fontWeight: FontWeight.w400),
            ),
            //
            //
            //

            new InkWell(
              child: Text(
                "button",
                textDirection: TextDirection.ltr,
              ),
              onTap: () => debugPrint("button tapped"),
            )
          ],
        ),
      ),
      //
      ///
      ////
      ///
      bottomNavigationBar: new BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Item 1",
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: "Item 2",
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.mark_email_unread),
            label: "Item 3",
          ),
        ],
        onTap: (int i) => debugPrint("Hey Touched $i"),
      ),

      floatingActionButton: new FloatingActionButton(
        onPressed: () => debugPrint("Pressed"),
        backgroundColor: Colors.lightGreen,
        tooltip: "Going Up",
        child: new Icon(Icons.call_missed),
      ),
    );
  }
}
