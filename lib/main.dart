import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'widgets/screens/HomeScreen.dart';
import 'widgets/screens/IndoorNavigationScreen.dart';
import 'utilities/ApplicationConstants.dart';

void main() => runApp(Application());

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: APPLICATION_NAME,
      initialRoute: HOME_ROUTE,
      routes: {
        HOME_ROUTE: (context) => HomeScreen(),
        INDOOR_NAVIGATION_ROUTE: (context) => IndoorNavigationPage(),
      }
    );
  }
}
