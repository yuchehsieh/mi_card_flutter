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
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    constraints: BoxConstraints.expand(
                      width: 100,
                      height: constraints.maxHeight / 2,
                    ),
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
                    constraints: BoxConstraints.expand(
                      width: 100,
                      height: constraints.maxHeight / 2,
                    ),
                    color: Colors.blue,
                    margin: EdgeInsets.only(
                      top: constraints.maxHeight / 2,
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
