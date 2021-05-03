import 'package:final_app/src/pages/login_page.dart';
import 'package:final_app/themes.dart';
import 'package:final_app/src/components/home_page/components/feed_cards.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FeedsPage extends StatefulWidget {
  @override
  _FeedsPageState createState() => _FeedsPageState();
}

class _FeedsPageState extends State<FeedsPage> {
  late SharedPreferences prefs;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light
        .copyWith(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: kMyBackgroundColor,
            title: Text(kAppName),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.logout),
                  onPressed: () async {
                    prefs = await SharedPreferences.getInstance();
                    prefs.clear();
                    prefs.commit();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                    );
                  })
            ],
          ),
          backgroundColor: kMyBackgroundColor,
          body: ListView(
            children: [
              MyCustomCard(
                postContent:
                    "Helloo Team, You've done until dashboard. \nAn automated approach for an online grievance system for categorization, tagging & analysis of sentiments of grievances through a web & mobile portal using Deep Learning models.",
                // userName: "Siddharaj Jawalkar",
                grievanceStatus: "Solved",
                postTime: "2 Hours Ago",
              ),
              MyCustomCard(
                postContent:
                    "Helloo Team, You've done until dashboard. \nAn automated approach for an online grievance system for categorization, tagging & analysis of sentiments of grievances through a web & mobile portal using Deep Learning models.",
                //userName: "Siddharaj Jawalkar",
                grievanceStatus: "Solved",
                postTime: "2 Hours Ago",
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {},
            label: Text("Post"),
            icon: Icon(Icons.post_add),
          ),
        ),
      ),
    );
  }
}
