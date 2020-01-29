import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:matrix_gesture_detector/matrix_gesture_detector.dart';
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
      body: MatrixGestureDetector(
        onMatrixUpdate: (Matrix4 m, Matrix4 tm, Matrix4 sm, Matrix4 rm) {
          setState(() {

          });
        },
      )
    );
  }
}

