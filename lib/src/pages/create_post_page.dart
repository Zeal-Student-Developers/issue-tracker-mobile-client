import 'package:final_app/src/components/home_page/feeds.dart';
import 'package:flutter/material.dart';
import 'package:final_app/themes.dart';

class CreatePostPage extends StatefulWidget {
  @override
  _CreatePostPageState createState() => _CreatePostPageState();
}

class _CreatePostPageState extends State<CreatePostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: kMyBackgroundColor,
        title: Text(kAppName),
      ),
      backgroundColor: kMyBackgroundColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Create new Post",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.normal
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CreatePageCustomTextField(text: "Title", noOfLines: 1,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CreatePageCustomTextField(text: "Description", noOfLines: 4,),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  child: Icon(
                    Icons.add_a_photo,
                    color: Colors.white,
                  ),
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => CommentSectionPage(),
                    //     ));
                    print("Photo Icon clicked");
                  },
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
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                  child: Container(
                    constraints: BoxConstraints(maxWidth: 100.0, minHeight: 30.0),
                    alignment: Alignment.center,
                    child: Text(
                        "Create Post",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CreatePageCustomTextField extends StatelessWidget {
  final String text;
  final int noOfLines;

  CreatePageCustomTextField({required this.text, required this.noOfLines});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      maxLines: noOfLines,
      decoration: InputDecoration(
        filled: true,
        fillColor: kMyCardColour,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        hintText: text,
        labelStyle: TextStyle(color: Colors.white70),
      ),
      style: TextStyle(
        color: Colors.white,
      ),
    );
  }
}
