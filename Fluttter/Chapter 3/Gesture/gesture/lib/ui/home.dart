import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final String title;
  Home({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text(title),
      ),
      body: new Center(
        child: new customButton(),
      ),
    );
  }
}

class customButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
//GEsture
    return new GestureDetector(
      // Snackbar
      onTap: () {
        final snackBar = new SnackBar(
          content: new Text("Hello Gesture"),
          backgroundColor: Theme.of(context).backgroundColor,
          duration: Duration(hours: 0, minutes: 0, seconds: 1, milliseconds: 0),
        );

        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },

// add butrton

      child: Container(
        padding: new EdgeInsets.all(15.0),
        decoration: new BoxDecoration(
          color: Theme.of(context).focusColor,
          borderRadius: BorderRadius.circular(5.5),
        ),
        child: Text("First Button"),
      ),
    );
  }
}
