import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:final_app/src/components/bottom_navigation_bar/nav_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: "Issue Tracker",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return NavBar();
  }
}
