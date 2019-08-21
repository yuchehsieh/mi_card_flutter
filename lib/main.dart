import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const iconSize = 50.0;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) => Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Positioned(
                  top: 0,
//                  left: 0,
                  child: Icon(Icons.star, size: iconSize),
                ),
                Positioned(
                  top: constraints.maxHeight - iconSize,
                  left: constraints.maxWidth - iconSize,
//                  bottom: 0,
//                  right: 0,
                  child: Icon(Icons.call, size: iconSize),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
