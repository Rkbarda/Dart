import 'package:flutter/material.dart';

class MakeItRain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MakeItRainState();
  }
}

class MakeItRainState extends State<MakeItRain> {
  int _moneyCounter = 0;
  double _textSize = 34;
  int _donation = 0;
  String _msg = "";

  Color _color1 = Colors.green;
  void _rainMoney() {
    print(_moneyCounter);
    setState(
      () {
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
        if (_textSize <= 80) {
          _textSize = _textSize + 4;
        }
        //important -setState is called each time we need to update user interface
        _moneyCounter = _moneyCounter + 100;
        _msg = '\$ $_moneyCounter Added in Your Wallet';
        _color1 = Colors.green;
        final snackBar = new SnackBar(
          content: new Text(
            _msg,
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: _color1,
          duration: Duration(hours: 0, minutes: 0, seconds: 1, milliseconds: 0),
        );

        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
    );

    debugPrint("$_moneyCounter");
  }

  void _donateMoney() {
    setState(
      () {
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
        if (_textSize >= 34) {
          _textSize = _textSize - 4;
        }
        //important -setState is called each time we need to update user interface
        if (_moneyCounter > 0) {
          _moneyCounter = _moneyCounter - 100;
          _donation = _donation + 100;
          _msg = '\$100 sent to donation';
        } else {
          _msg = "You don't have any money to donate";
        }
        _color1 = Colors.red;
        final snackBar = new SnackBar(
          content: new Text(
            _msg,
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: _color1,
          duration: Duration(hours: 0, minutes: 0, seconds: 1, milliseconds: 0),
        );

        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Make It Rain!"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            //title
            Text(
              "GET RICH!",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w700,
                fontSize: 29.9,
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  '\$$_moneyCounter',
                  style: TextStyle(
                      color: _color1,
                      fontSize: _textSize,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () => _rainMoney(),
                      style:
                          TextButton.styleFrom(backgroundColor: Colors.green),
                      child: Text(
                        "Let It Rain",
                        style: TextStyle(fontSize: 19.9, color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    TextButton(
                      onPressed: () => _donateMoney(),
                      style: TextButton.styleFrom(backgroundColor: Colors.red),
                      child: Text(
                        "Donate",
                        style: TextStyle(fontSize: 19.9, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
