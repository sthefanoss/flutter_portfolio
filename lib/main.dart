import 'package:flutter/material.dart';
import 'dart:js' as js;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sthefano Schiavon Portfolio',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sthefano Schiavon'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          js.context.callMethod('open', ['https://google.com']);
        },
        tooltip: 'Google',
        child: Icon(Icons.open_in_new),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
