import 'package:final_app/comment_section_page.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

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
  bool isDislikedIconSelectedIcon = false;
  Icon dislikeIcon = Icon(
    Icons.thumb_down_alt_outlined,
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
            title: Text(kAppName),
          ),
          backgroundColor: kMyBackgroundColor,
          body: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                width: double.maxFinite,
                child: Card(
                  color: kMyCardColour,
                  shadowColor: Colors.black,
                  child: Column(
                    children: [
                      Text(
                        "Helloo Siddharaj You've done until dashboard \n An automated approach for an online grievance system for categorization, tagging & analysis of sentiments of grievances through a web & mobile portal using Deep Learning models.",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                      Divider(
                        color: Colors.black,
                        height: 20,
                      ),
                      Row(
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
                                      dislikeIcon = Icon(
                                        Icons.thumb_down_alt_outlined,
                                        color: Colors.white,
                                      );
                                      isLikedIconSelectedIcon = true;
                                      isDislikedIconSelectedIcon = false;
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
                          Row(
                            children: [
                              //This is for unlike button and count of unlikes
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    // isLikedIconSelectedIcon == false means the post is not yet liked & isLikedIconSelectedIcon == false means the post is liked
                                    if (isDislikedIconSelectedIcon == false) {
                                      dislikeIcon = Icon(
                                        Icons.thumb_down,
                                        color: Colors.red,
                                      );
                                      likeIcon = Icon(
                                        Icons.thumb_up_alt_outlined,
                                        color: Colors.white,
                                      );
                                      isDislikedIconSelectedIcon = true;
                                      isLikedIconSelectedIcon = false;
                                    } else {
                                      dislikeIcon = Icon(
                                        Icons.thumb_down_alt_outlined,
                                        color: Colors.white,
                                      );
                                      isDislikedIconSelectedIcon = false;
                                    }
                                  });
                                },
                                child: dislikeIcon,
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
                      )
                    ],
                  ),
                  elevation: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
