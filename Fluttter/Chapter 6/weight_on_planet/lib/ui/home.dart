import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeState();
  }
}

class HomeState extends State<Home> {
  int radioValue = 0;
  handleRadioValueChanged(val) {
    setState(() {
      radioValue = val;
      print(radioValue);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Weight on Planet"),
        centerTitle: true,
        backgroundColor: Colors.black38,
      ),
      backgroundColor: Colors.lightBlue,
      body: Container(
        alignment: Alignment.topCenter,
        child: ListView(
          padding: EdgeInsets.all(2.5),
          children: <Widget>[
            Image.asset(
              'images/planet.png',
              height: 133.0,
              width: 200.0,
            ),
            Container(
                margin: EdgeInsets.all(3.0),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    TextField(
                      controller: null,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelText: "Your Weight on Earth",
                          hintText: 'In KG',
                          icon: Icon(Icons.person_2_outlined)),
                    ),
                    Padding(padding: EdgeInsets.all(5.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Radio<int>(
                          activeColor: Colors.deepOrangeAccent,
                          value: 0,
                          groupValue: radioValue,
                          onChanged: handleRadioValueChanged,
                        ),
                        Text(
                          "Pluto",
                          style: TextStyle(color: Colors.white),
                        ),
                        Radio<int>(
                            activeColor: Colors.deepOrangeAccent,
                            value: 1,
                            groupValue: radioValue,
                            onChanged: handleRadioValueChanged),
                        Text(
                          "Mars",
                          style: TextStyle(color: Colors.white),
                        ),
                        Radio<int>(
                            activeColor: Colors.deepOrangeAccent,
                            value: 2,
                            groupValue: radioValue,
                            onChanged: handleRadioValueChanged),
                        Text(
                          "Venus",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
