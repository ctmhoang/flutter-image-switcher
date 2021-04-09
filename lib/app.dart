import 'package:flutter/material.dart';
import 'package:imgswitcher/screens/home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {'/home': (context) => Home()},
      title: 'Image Switcher',
      theme: ThemeData(
          primarySwatch: Colors.amber,
          accentColor: Colors.white,
          fontFamily: 'SF Pro Display',
          textTheme: TextTheme(
              button: TextStyle(color: Colors.white, fontSize: 18),
              headline6: TextStyle(color: Colors.white))),
      home: Home(),
    );
  }
}
