import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello flutter',
      theme: ThemeData(primaryColor: Colors.blue),
      home: HomePage(
        title: 'Header title here',
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  final String title;

  HomePage({Key key, this.title}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      floatingActionButton: FloatingActionButton(
        onPressed: _increase,
        tooltip: '숫자 올리는 버튼',
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('버튼을 누른 회수는'),
            Text(
              '$_count',
              style: Theme.of(context).textTheme.headline1,
            ),
          ],
        ),
      ),
    );
  }

  _increase() {
    setState(() {
      _count++;
    });
  }
}
