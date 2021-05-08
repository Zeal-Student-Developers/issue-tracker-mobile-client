import 'package:final_app/src/api/issues_api_service.dart';
import 'package:final_app/src/pages/create_post_page.dart';
import 'package:final_app/src/pages/login_page.dart';
import 'package:final_app/src/pages/profile_page.dart';
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
  bool isLoading = true;
  List<Map<String, dynamic>> issues = [];
  void initState() {
    super.initState();
    getAllIssues().then((value) {
      issues = value;
      setState(() {
        isLoading = false;
      });
    });
  }

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
          body: isLoading
              ? Center(child: CircularProgressIndicator())
              : getBody(),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => CreatePostPage(),));
            },
            label: Text(""),
            icon: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Icon(Icons.post_add),
            ),
          ),
        ),
      ),
    );
  }

  Widget getBody() {
    return ListView.builder(
        itemCount: issues.length,
        itemBuilder: (context, index) {
          return getCard(issues[index]);
        });
  }

  Widget getCard(Map<String, dynamic> issue) {
    String status;
    if (!issue['isResolved']) {
      status = 'resolved';
    } else {
      status = 'Not resolved';
    }
    return MyCustomCard(
      postContent: issue['description'] ?? "content",
      // userName: "Siddharaj Jawalkar",
      grievanceStatus: status,
      postTime: "2 Hours Ago",
      newtworkImageUrl: issue['images'].length > 0
          ? issue['images'][0]
          : 'https://static1.srcdn.com/wordpress/wp-content/uploads/2021/03/Among-Us-Random-Name-Generator.jpg?q=50&fit=crop&w=960&h=500&dpr=1.5',
      department: issue['department'],
    );
  }
}
