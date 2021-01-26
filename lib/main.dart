import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Messanger'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var data = [
      {"message": "Testovoe soobshenie", "author": "User"},
      {"message": "Eshe odno soobshenie", "author": "AnotherUser"},
      {"message": "Test test test test", "author": "YetAnotherUser"},
      {"message": "Test test test test", "author": "YetAnotherUser"},
      {"message": "Test test test test", "author": "YetAnotherUser"},
      {"message": "Test test test test", "author": "YetAnotherUser"},
      {"message": "Test test test test", "author": "YetAnotherUser"},
      {"message": "Test test test test", "author": "YetAnotherUser"},
      {"message": "Test test test test", "author": "YetAnotherUser"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: data
            .map((el) => Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: el["author"] == "User" ? Colors.white : Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 5,
                          color: Colors.black,
                          offset: Offset(1, 3))
                    ],
                    border: Border.all()),
                // decoration: BoxDecoration(border: Border.all()),
                // padding: EdgeInsets.all(5),
                child: ListTile(
                  title: Text(el["author"] + ":",
                      style: TextStyle(
                          fontSize: 22,
                          color: el["author"] == "User"
                              ? Colors.black
                              : Colors.white,
                          fontWeight: FontWeight.bold)),
                  subtitle: Text(el["message"],
                      style: TextStyle(
                          fontSize: 18,
                          color: el["author"] == "User"
                              ? Colors.black
                              : Colors.white)),
                )
                // child: Text(el,
                //     style:
                //         TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ))
            .toList(),
      ),
    );
  }
}
