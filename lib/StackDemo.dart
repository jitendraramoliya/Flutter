import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Stack Demo",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: StackHomePage(),
    );
  }
}

class StackHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StackState();
  }
}

class StackState extends State<StackHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Wrap Demo")),
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              color: Colors.pink,
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              margin: EdgeInsets.all(10),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.pink[50],
                    Colors.pink[50],
                    Colors.pink[500],
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                   child: Text(
                     "For Ground Text",
                     style: TextStyle(color: Colors.white, fontSize: 25,),
                     textAlign: TextAlign.left,
                   ),
                  ),
                  Text(
                    "For Ground Text",
                    style: TextStyle(color: Colors.blue, fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "For Ground Text",
                    style: TextStyle(color: Colors.amber, fontSize: 25),
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
