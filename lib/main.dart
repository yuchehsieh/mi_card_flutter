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
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://flutter.io/images/catalog-widget-placeholder.png',
                  ),
                ),
              ),
              child: Container(
                height: 200,
                width: 200,
                foregroundDecoration: BoxDecoration(
                  backgroundBlendMode: BlendMode.exclusion,
                  gradient: LinearGradient(
                    colors: const [
                      Colors.red,
                      Colors.blue,
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
