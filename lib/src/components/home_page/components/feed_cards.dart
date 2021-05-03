import 'package:flutter/material.dart';
import 'package:final_app/themes.dart';
import 'package:final_app/src/pages/comment_section_page.dart';

class MyCustomCard extends StatefulWidget {
  final String postContent;
  final String grievanceStatus;
  final String postTime;

  MyCustomCard({
    required this.postContent,
    required this.grievanceStatus,
    required this.postTime,
  });
  @override
  _MyCustomCardState createState() => _MyCustomCardState();
}

class _MyCustomCardState extends State<MyCustomCard> {
  bool isLikedIconSelectedIcon = false;
  Icon likeIcon = Icon(
    Icons.thumb_up_alt_outlined,
    color: Colors.white,
  );
  int postUpvotes = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      width: double.maxFinite,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
                        backgroundImage: AssetImage("images/user_icon.png"),
                        radius: 20.0,
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Text(
                          //   widget.userName,
                          //   style: TextStyle(
                          //     color: Colors.white,
                          //     fontWeight: FontWeight.w900,
                          //     fontSize: 18,
                          //   ),
                          // ),
                          Padding(
                            padding: const EdgeInsets.only(top: 3.0),
                            child: Text(
                              widget.postTime,
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
                      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                      child: Card(
                        color: Colors.transparent,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.green, width: 1.0),
                            borderRadius: BorderRadius.circular(10.0)),
                        margin: EdgeInsets.symmetric(
                            vertical: 3.0, horizontal: 3.0),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            widget.grievanceStatus,
                            style: TextStyle(color: Colors.green),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                      child: Icon(
                        Icons.arrow_drop_down_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                widget.postContent,
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
                              postUpvotes = postUpvotes + 1;
                            } else {
                              likeIcon = Icon(
                                Icons.thumb_up_alt_outlined,
                                color: Colors.white,
                              );
                              isLikedIconSelectedIcon = false;
                              postUpvotes = postUpvotes - 1;
                            }
                          });
                        },
                        child: likeIcon,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        postUpvotes.toString(),
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
                                builder: (context) => CommentSectionPage(),
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
    );
  }
}
