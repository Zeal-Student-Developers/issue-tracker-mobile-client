import 'package:final_app/feeds.dart';
import 'package:final_app/login_page.dart';
import 'package:final_app/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
  List<Widget> _pages = [FeedsPage(), LoginPage(), SignUpPage()];

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home_outlined)),
              BottomNavigationBarItem(icon: Icon(Icons.login)),
              BottomNavigationBarItem(icon: Icon(Icons.app_registration)),
            ],
          ),
          tabBuilder: (context, index) {
            return _pages[index];
          },
        ));
  }
}
