

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class IndoorNavigationScreen extends StatefulWidget {
  @override
  State<IndoorNavigationScreen> createState() => IndoorNavigationPageState();
}

class IndoorNavigationPageState extends State<IndoorNavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Indoor Navigation'),
        backgroundColor: Colors.blueGrey,
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text("Welcome to the navigation route!")
            ],
          )
        )
      )
    );
  }
}

//return MaterialApp(
//home: Scaffold(
//appBar: AppBar(
//title: Text('Shortest Path Algorithm'),
//),
//body: Image.asset('assets/images/CC1.png'),
//)
//);

