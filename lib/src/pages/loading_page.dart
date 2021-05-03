import 'package:final_app/src/components/bottom_navigation_bar/nav_bar.dart';
import 'package:final_app/src/pages/login_page.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class LodingPage extends StatefulWidget {
  @override
  _LodingPageState createState() => _LodingPageState();
}

class _LodingPageState extends State<LodingPage> {
  late SharedPreferences prefs;

  @override
  void initState() {
    super.initState();
    checkLogingStatus();
  }

  checkLogingStatus() async {
    prefs = await SharedPreferences.getInstance();
    if (prefs.getString("token") != null) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => NavBar(),
        ),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Color(0xFFe2d3f4),
        body: SpinKitFadingCircle(
          color: Color(0xFF6F35A5),
        ),
      ),
    );
  }
}
