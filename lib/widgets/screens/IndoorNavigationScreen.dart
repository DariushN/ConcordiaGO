

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class IndoorNavigationPage extends StatelessWidget {
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
              new Image.asset('assets/images/CC1.png')
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

