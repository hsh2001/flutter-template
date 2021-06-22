import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/CountProvider.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

/// You can remove _Screen widget to reset project when you use this template.
class _Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              'images/moa.jpg',
              width: 100,
              height: 100,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 20),
          child: Center(
            child: Text(
              'Hello Flutter!',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CountProvider()),
      ],
      child: MaterialApp(
        title: 'Hello flutter',
        theme: ThemeData(primaryColor: Colors.blue),
        home: Scaffold(body: _Screen()),
      ),
    );
  }
}
