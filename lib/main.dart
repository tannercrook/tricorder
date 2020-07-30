import 'package:flutter/material.dart';
import 'package:tricorder/reading.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tricorder',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ReadingPage(title: 'Tricorder'),
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

  void _takeReading() {
    Navigator.push(context, MaterialPageRoute(builder: (contxt) => ReadingPage(title: 'New Reading')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30)
          )
        ),
      ),
      body: ReadingPage()
    );
  }
}