import 'package:final_app/themes.dart';
import 'file:///C:/Users/vaish/Desktop/issue-tracker-mobile-client/lib/src/pages/comment_section_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeedsPage extends StatefulWidget {
  @override
  _FeedsPageState createState() => _FeedsPageState();
}

class _FeedsPageState extends State<FeedsPage> {
  bool isLikedIconSelectedIcon = false;
  Icon likeIcon = Icon(
    Icons.thumb_up_alt_outlined,
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
// image: DecorationImage(
//     image: AssetImage("images/college1.jpg"), fit: BoxFit.cover),
            ),
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(kAppName),
            backgroundColor: kMyBackgroundColor,
          ),
          backgroundColor: kMyBackgroundColor,
          body: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                width: double.maxFinite,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: kMyCardColour,
                  shadowColor: Colors.black,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage("images/user_icon.png"),
                                  radius: 20.0,
                                  backgroundColor: Colors.transparent,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Siddharaj Jawalkar",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 3.0),
                                      child: Text(
                                        "2 Hours Ago",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 11,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.start,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    23.0, 0.0, 0.0, 0.0),
                                child: Card(
                                  color: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: Colors.green, width: 1.0),
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  margin: EdgeInsets.symmetric(
                                      vertical: 3.0, horizontal: 3.0),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(
                                      "Solved",
                                      style: TextStyle(color: Colors.green),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    0.0, 0.0, 5.0, 0.0),
                                child: Icon(
                                  Icons.arrow_drop_down_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )
                        ],
                        mainAxisSize: MainAxisSize.max,
                      ),
                      // Divider(
                      //   indent: 50,
                      //   endIndent: 50,
                      //   color: Colors.black,
                      //   height: 10,
                      // ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image(
                          image: AssetImage("images/random_image.jpg"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
                        child: Text(
                          "Helloo Team, You've done until dashboard. \nAn automated approach for an online grievance system for categorization, tagging & analysis of sentiments of grievances through a web & mobile portal using Deep Learning models.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            //This is for like button and count of likes
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      // isLikedIconSelectedIcon == false means the post is not yet liked & isLikedIconSelectedIcon == false means the post is liked
                                      if (isLikedIconSelectedIcon == false) {
                                        likeIcon = Icon(
                                          Icons.thumb_up,
                                          color: Colors.green,
                                        );
                                        isLikedIconSelectedIcon = true;
                                      } else {
                                        likeIcon = Icon(
                                          Icons.thumb_up_alt_outlined,
                                          color: Colors.white,
                                        );
                                        isLikedIconSelectedIcon = false;
                                      }
                                    });
                                  },
                                  child: likeIcon,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "1",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                            ////This is for Comments button and count of Comments
                            Row(
                              children: [
                                GestureDetector(
                                  child: Icon(
                                    Icons.comment,
                                    color: Colors.white,
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              CommentSectionPage(),
                                        ));
                                  },
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "1",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  elevation: 15,
                ),
              ),
            ],
          ),
          floatingActionButton: Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 50.0),
            child: FloatingActionButton.extended(
              onPressed: () {},
              label: Text("Post"),
              icon: Icon(Icons.post_add),
            ),
          ),
        ),
      ),
    );
  }
}

// Card(
// color: Colors.transparent,
// margin: EdgeInsets.symmetric(
// vertical: 3.0, horizontal: 3.0),
// child: Padding(
// padding: const EdgeInsets.all(3.0),
// child: Text(
// "Solved",
// style: TextStyle(color: Colors.green),
// ),
// ),
// ),
