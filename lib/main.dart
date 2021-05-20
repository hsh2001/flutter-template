import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello flutter',
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
        body: Center(
          child: Text(
            'Hello world!',
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
      ),
    );
  }
}
