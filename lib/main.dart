import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Basics 3',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Basics 3 home page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
        children: <Widget>[
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  "This is Test Text",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.green,
                  ),
                ),
                Image.asset(
                  'assets/flutter.png',
                  height: 100,
                  width: 150,
                ),
                Icon(
                  Icons.timer,
                  size: 30.0,
                  color: Colors.lightGreen,
                ),
                RaisedButton(
                  onPressed: () {},
                  padding: EdgeInsets.all(5.0),
                  child: Text('Click here!'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
