import 'package:final_app/src/components/home_page/feeds.dart';
import 'package:flutter/material.dart';
import 'package:final_app/themes.dart';

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
              centerTitle: true,
              backgroundColor: kMyCardColour,
              title: Text(
                  kAppName,
                style: TextStyle(color: Colors.black),
              ),
            ),
            //backgroundColor: kMyBackgroundColor,
            body: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
// Title and Its Description
                      Container(
                        color: kMyBackgroundColor,
                        width: double.maxFinite,
                        padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Title of the Issue",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Description - Helloo Team, You\'ve done until dashboard. \nAn automated approach for an online grievance system for categorization, tagging & analysis of sentiments of grievances through a web & mobile portal using Deep Learning models.",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.justify,
                            )
                          ],
                        ),
                      ),
// TabBar
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                        child: TabBar(
                          unselectedLabelColor: Colors.grey,
                          labelColor: kMyButtonColor,
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
                          indicatorColor: kMyButtonColor,
                          controller: _tabController,
                          indicatorSize: TabBarIndicatorSize.tab,
                        ),
                      ),
                      // SizedBox(
                      //   height: 10,
                      // ),
// TabBar Content
// TODO : Create TextBox and
// TODO : Check the alignment of Comment submit section
                      SizedBox(
                        height: MediaQuery.of(context).size.height/1.8,
                        child: TabBarView(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListView(
                                shrinkWrap: true,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                                    child: Card(
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                      color: kMyBackgroundColor,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 10.0 , horizontal: 10.0),
                                        child: Text('Comments no 1 - Helloo Team, You\'ve done until dashboard. \nAn automated approach for an online grievance system for categorization, tagging & analysis of sentiments of grievances through a web & mobile portal using Deep Learning models.' , style: commentsTextStyle,),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                                    child: Card(
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                      color: kMyBackgroundColor,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 10.0 , horizontal: 10.0),
                                        child: Text('An automated approach for an online grievance system for categorization, tagging & analysis of sentiments of grievances through a web & mobile portal using Deep Learning models.' , style: commentsTextStyle,),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListView(
                                shrinkWrap: true,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                                    child: Card(
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                      color: kMyBackgroundColor,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 10.0 , horizontal: 10.0),
                                        child: Text('Solution no 1 - Helloo Team, You\'ve done until dashboard. \nAn automated approach for an online grievance system for categorization, tagging & analysis of sentiments of grievances through a web & mobile portal using Deep Learning models.' , style: commentsTextStyle,),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                                    child: Card(
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                      color: kMyBackgroundColor,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 10.0 , horizontal: 10.0),
                                        child: Text('An automated approach for an online grievance system for categorization, tagging & analysis of sentiments of grievances through a web & mobile portal using Deep Learning models.' , style: commentsTextStyle,),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                          controller: _tabController,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
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
                                  labelStyle: TextStyle(color: Colors.black),
                                ),
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            RaisedButton(
                              color: kMyButtonColor,
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
                                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
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
