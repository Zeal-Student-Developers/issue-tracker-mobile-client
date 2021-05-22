import 'package:flutter/material.dart';
import 'package:final_app/themes.dart';
import 'package:flutter/widgets.dart';
import 'package:final_app/src/components/home_page/components/feed_cards.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery
        .of(context)
        .size
        .height;
    final width = MediaQuery
        .of(context)
        .size
        .width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kMyCardColour,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: kMyCardColour,
          title: Text(
            kAppName,
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage('https://googleflutter.com/sample_image.jpg'),
                          fit: BoxFit.fill
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Siddharaj Jawalkar",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    color: kMyButtonColor,
                    onPressed: () {

                    },
                    shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
                    child: Container(
                      constraints: BoxConstraints(maxWidth: 100.0, minHeight: 50.0),
                      alignment: Alignment.center,
                      child: Text(
                          "Edit Profile",
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              "Posts",
                              style: TextStyle(
                                  color: Colors.black,
                                fontSize: 20
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              "1",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              "Department",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              "Computer",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  color: kMyBackgroundColor,
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                      child: MyCustomCard(
                        postTitle: "Issue Title",
                        postContent:
                        "Helloo Team, You've done until dashboard. \nAn automated approach for an online grievance system for categorization, tagging & analysis of sentiments of grievances through a web & mobile portal using Deep Learning models.",
                        //userName: "Siddharaj Jawalkar",
                        grievanceStatus: "Solved",
                        postTime: "2 Hours Ago",
                        department: "Comp",
                        newtworkImageUrl: "https://static1.srcdn.com/wordpress/wp-content/uploads/2021/03/Among-Us-Random-Name-Generator.jpg?q=50&fit=crop&w=960&h=500&dpr=1.5",
                      )
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget getBody() {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 5,
        itemBuilder: (context, index) {
          return getCard();
        });
  }

  Widget getCard() {
    return MyCustomCard(
      postTitle: "Issue Title",
      postContent:
      "Helloo Team, You've done until dashboard. \nAn automated approach for an online grievance system for categorization, tagging & analysis of sentiments of grievances through a web & mobile portal using Deep Learning models.",
      //userName: "Siddharaj Jawalkar",
      grievanceStatus: "Solved",
      postTime: "2 Hours Ago",
      department: "Computer",
      newtworkImageUrl: "",
    );
  }
}
// MyCustomCard(
// postContent:
// "Helloo Team, You've done until dashboard. \nAn automated approach for an online grievance system for categorization, tagging & analysis of sentiments of grievances through a web & mobile portal using Deep Learning models.",
// //userName: "Siddharaj Jawalkar",
// grievanceStatus: "Solved",
// postTime: "2 Hours Ago",
// ),

// MaterialApp(
// debugShowCheckedModeBanner: false,
// home: Scaffold(
// backgroundColor: kMyBackgroundColor,
// appBar: AppBar(
// backgroundColor: kMyBackgroundColor,
// centerTitle: true,
// title: Text(kAppName),
// ),
// body: SafeArea(
// child: SingleChildScrollView(
// child: Column(
// children: [
// Container(
// decoration: BoxDecoration(
// image: DecorationImage(
// image: AssetImage("images/random_image.jpg"),
// fit: BoxFit.cover,
// )),
// child: Container(
// width: double.infinity,
// height: 200,
// child: Container(
// alignment: Alignment(-0.98 , 2.3),
// child: CircleAvatar(
// backgroundImage: AssetImage("images/user_icon.png"),
// radius: 50.0,
// backgroundColor: Colors.transparent,
// ),
// ),
// ),
// ),
// Padding(
// padding: const EdgeInsets.symmetric(vertical: 10.0),
// child: Container(
// alignment: Alignment(0.2, 50.0),
// //alignment: Alignment.bottomCenter,
// child: Text(
// "Siddharaj Jawalkar",
// style: TextStyle(
// color: Colors.white,
// fontWeight: FontWeight.w900,
// fontSize: 21,
// ),
// ),
// ),
// ),
// SizedBox(
// height: 20.0,
// ),
// Padding(
// padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
// child: Card(
// color: kMyCardColour,
// elevation: 5,
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(10),
// ),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceAround,
// children: [
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: Column(
// children: [
// Text(
// "Post",
// style: TextStyle(
// color: Colors.white,
// fontWeight: FontWeight.bold),
// ),
// SizedBox(
// height: 5.0,
// ),
// Text(
// "1",
// style: TextStyle(
// color: Colors.white,
// fontWeight: FontWeight.normal),
// ),
// ],
// ),
// ),
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: Column(
// children: [
// Text(
// "Department",
// style: TextStyle(
// color: Colors.white,
// fontWeight: FontWeight.bold),
// ),
// SizedBox(
// height: 5.0,
// ),
// Text(
// "Computer",
// style: TextStyle(
// color: Colors.white,
// fontWeight: FontWeight.normal),
// ),
// ],
// ),
// ),
// ],
// ),
// ),
// ),
// Divider(
// indent: 10,
// endIndent: 10,
// color: kMyCardColour,
// height: 10,
// thickness: 1,
// ),
// Padding(
// padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
// child: MyCustomCard(
// postContent:
// "Helloo Team, You've done until dashboard. \nAn automated approach for an online grievance system for categorization, tagging & analysis of sentiments of grievances through a web & mobile portal using Deep Learning models.",
// //userName: "Siddharaj Jawalkar",
// grievanceStatus: "Solved",
// postTime: "2 Hours Ago",
// )
// ),
// ],
// ),
// ),
// ),
// ),
// );

// CARD Elements
// Container(
// decoration: BoxDecoration(
// image: DecorationImage(
// image: AssetImage("images/random_image.jpg"),
// fit: BoxFit.cover,
// )),
// child: Container(
// width: double.infinity,
// height: 200,
// child: Container(
// alignment: Alignment(-0.98, 2.3),
// child: CircleAvatar(
// backgroundImage: AssetImage("images/user_icon.png"),
// radius: 50.0,
// backgroundColor: Colors.transparent,
// ),
// ),
// ),
// ),
// Padding(
// padding: const EdgeInsets.symmetric(vertical: 10.0),
// child: Container(
// alignment: Alignment(0.2, 50.0),
// //alignment: Alignment.bottomCenter,
// child: Text(
// "Siddharaj Jawalkar",
// style: TextStyle(
// color: Colors.white,
// fontWeight: FontWeight.w900,
// fontSize: 21,
// ),
// ),
// ),
// ),
// SizedBox(
// height: 20.0,
// ),
// Padding(
// padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
// child: Card(
// color: kMyCardColour,
// elevation: 5,
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(10),
// ),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceAround,
// children: [
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: Column(
// children: [
// Text(
// "Post",
// style: TextStyle(
// color: Colors.white,
// fontWeight: FontWeight.bold),
// ),
// SizedBox(
// height: 5.0,
// ),
// Text(
// "1",
// style: TextStyle(
// color: Colors.white,
// fontWeight: FontWeight.normal),
// ),
// ],
// ),
// ),
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: Column(
// children: [
// Text(
// "Department",
// style: TextStyle(
// color: Colors.white,
// fontWeight: FontWeight.bold),
// ),
// SizedBox(
// height: 5.0,
// ),
// Text(
// "Computer",
// style: TextStyle(
// color: Colors.white,
// fontWeight: FontWeight.normal),
// ),
// ],
// ),
// ),
// ],
// ),
// ),
// ),
// Divider(
// indent: 10,
// endIndent: 10,
// color: kMyCardColour,
// height: 10,
// thickness: 1,
// ),