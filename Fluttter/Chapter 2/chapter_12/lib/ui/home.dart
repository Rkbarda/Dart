import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.greenAccent,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "First Item",
            textDirection: TextDirection.ltr,
            style: TextStyle(color: Colors.indigoAccent),
          ),
          const Text(
            "Second Item",
            textDirection: TextDirection.ltr,
            style: TextStyle(color: Colors.indigoAccent),
          ),
          Container(
            color: Colors.orange.shade50,
            alignment: Alignment.bottomLeft,
            child: const Text(
              "Third Item",
              textDirection: TextDirection.ltr,
              style: TextStyle(color: Colors.indigoAccent),
            ),
          )
        ],
      ),
    );
  }
}
