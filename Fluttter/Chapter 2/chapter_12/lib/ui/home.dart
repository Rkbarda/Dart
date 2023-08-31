// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_const

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.greenAccent,
      alignment: Alignment.center,
      // child: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     const Text(
      //       "First Item",
      //       textDirection: TextDirection.ltr,
      //       style: TextStyle(color: Colors.indigoAccent),
      //     ),
      //     const Text(
      //       "Second Item",
      //       textDirection: TextDirection.ltr,
      //       style: TextStyle(color: Colors.indigoAccent),
      //     ),
      //     Container(
      //       color: Colors.orange.shade50,
      //       alignment: Alignment.bottomLeft,
      //       child: const Text(
      //         "Third Item",
      //         textDirection: TextDirection.ltr,
      //         style: TextStyle(color: Colors.indigoAccent),
      //       ),
      //     )
      //   ],
      // ),

      // child: Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Text(
      //       "item 1",
      //       textDirection: TextDirection.ltr,
      //       style: TextStyle(fontSize: 92.2),
      //     ),
      //     Text(
      //       "item 2",
      //       textDirection: TextDirection.ltr,
      //       style: TextStyle(fontSize: 82.2),
      //     ),
      //     const Expanded(child: const Text("Item 3"))

      //     // Text(
      //     //   "item 3",
      //     //   textDirection: TextDirection.ltr,
      //     // )
      //   ],
      // ),

      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Text("1st Item"),
          Text("2nd Item"),
          Text("3rd Item"),
        ],
      ),
    );
  }
}
