import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch, // option 1
          children: <Widget>[
            Container(
              width: 100, // option 1
//              constraints: BoxConstraints.expand(width: 100), // option 2
              color: Colors.red,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.yellow,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.green,
                  ),
                ],
              ),
            ),
            Container(
              width: 100, // option 1
//              constraints: BoxConstraints.expand(width: 100), // option 2
              color: Colors.blue,
            )
          ],
        )),
      ),
    );
  }
}
