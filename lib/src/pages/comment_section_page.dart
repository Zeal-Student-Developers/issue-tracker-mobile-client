import 'package:final_app/src/components/bottom_navigation_bar/nav_bar.dart';
import 'package:final_app/src/components/custom_widgets.dart';
import 'package:final_app/src/components/home_page/feeds.dart';
import 'package:final_app/src/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:final_app/themes.dart';
import 'package:flutter/services.dart';

class CommentSectionPage extends StatefulWidget {
  @override
  _CommentSectionPageState createState() => _CommentSectionPageState();
}

class _CommentSectionPageState extends State<CommentSectionPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<String> _comments = [];

  @override
  void initState() {
    // TODO: implement initState
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        child: DefaultTabController(
          length: 2,
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              title: Text(kAppName),
            ),
            backgroundColor: kMyBackgroundColor,
            body: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    child: Card(
                      color: kMyCardColour,
                      shadowColor: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 30.0),
                        child: Text(
                          "Helloo Team, You've done until dashboard \nAn automated approach for an online grievance system for categorization, tagging & analysis of sentiments of grievances through a web & mobile portal using Deep Learning models.",
                          textAlign: TextAlign.justify,
                          style: commentsTextStyle,
                        ),
                      ),
                      elevation: 15,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                    child: TabBar(
                      unselectedLabelColor: Colors.white24,
                      labelColor: Colors.white,
                      tabs: [
                        Tab(
                          //icon: Icon(Icons.comment),
                          text: "Comments",
                        ),
                        Tab(
                          //icon: Icon(Icons.question_answer_outlined),
                          text: "Solutions",
                        )
                      ],
                      controller: _tabController,
                      indicatorSize: TabBarIndicatorSize.tab,
                    ),
                  ),
                  // SizedBox(
                  //   height: 10,
                  // ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height/1.9,
                    child: TabBarView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListView(
                            shrinkWrap: true,
                            children: [
                              Text('Comments no 1' , style: commentsTextStyle,),
                              Divider(thickness: 1),
                              Text('Comments no 2' , style: commentsTextStyle,),
                              Divider(thickness: 1),
                              Text('Comments no 3' , style: commentsTextStyle,),
                              Divider(thickness: 1),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListView(
                            shrinkWrap: true,
                            children: [
                              Text('Solution no 1' , style: commentsTextStyle,),
                              Divider(thickness: 1),
                              Text('Solution no 2' , style: commentsTextStyle,),
                              Divider(thickness: 1),
                              Text('Solution no 3' , style: commentsTextStyle,),
                              Divider(thickness: 1),
                            ],
                          ),
                        )
                      ],
                      controller: _tabController,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Flexible(
                          child: TextFormField(
                            autofocus: false,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: kMyCardColour,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.only(topRight: Radius.zero, bottomRight: Radius.zero, topLeft: Radius.circular(8.0), bottomLeft: Radius.circular(8.0)),
                              ),
                              labelText: "",
                              labelStyle: TextStyle(color: Colors.white),
                            ),
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        RaisedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FeedsPage(),
                                ));
                          },
                          shape:
                          RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.zero , bottomLeft: Radius.zero , bottomRight: Radius.circular(8.0) , topRight: Radius.circular(8.0))),
                          child: Container(
                              constraints: BoxConstraints(maxWidth: 100.0, minHeight: 57.0),
                              alignment: Alignment.center,
                              child: Text(
                              "Submit",
                                  style: TextStyle(fontWeight: FontWeight.bold)),
                            ),
                          ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


// Padding(
// padding: const EdgeInsets.symmetric(horizontal: 0.0),
// child: TextFormField(
// style: commentsTextStyle,
// keyboardType: TextInputType.text,
// maxLines: 1,
// autofocus: false,
// decoration: InputDecoration(
// filled: true,
// fillColor: kMyCardColour,
// border: OutlineInputBorder(
// borderRadius: BorderRadius.all(Radius.circular(30.0))),
// labelText: "Comment",
// ),
// ),
// ),

// Container(
// width: double.maxFinite,
// padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
// child: Card(
// color: kMyCardColour,
// shadowColor: Colors.black,
// //List of All comments in Text Widget
// child: Text(
// "All Comments",
// style: _textStyle,
// ),
// elevation: 15,
// ),
// )
