import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:photo_view/photo_view.dart';


class IndoorNavigationScreen extends StatefulWidget {
  @override
  State<IndoorNavigationScreen> createState() => IndoorNavigationPageState();
}

class IndoorNavigationPageState extends State<IndoorNavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Indoor Navigation'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        child: PhotoView(
          imageProvider: AssetImage('assets/images/CC1.png'),
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

