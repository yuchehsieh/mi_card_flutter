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
          child: Center(
            child: Material(
              shape: const BeveledRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                side: BorderSide(color: Colors.black, width: 4),
              ),
              color: Colors.yellow,
              child: Container(
                height: 200,
                width: 200,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
