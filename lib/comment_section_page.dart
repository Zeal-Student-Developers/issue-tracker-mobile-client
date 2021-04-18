import 'package:final_app/custom_widgets.dart';
import 'package:final_app/home_page.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class CommentSectionPage extends StatelessWidget {

  TextStyle _textStyle = TextStyle(
    color: Colors.white
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        child: Scaffold(
          appBar: AppBar(
            title: Text(kAppName),
          ),
          backgroundColor: kMyBackgroundColor,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                child: Card(
                  color: kMyCardColour,
                  shadowColor: Colors.black,
                  child: Text("Main Post Content",
                  style: _textStyle,),
                  elevation: 15,
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextFormField(
                  style: _textStyle,
                  keyboardType: TextInputType.multiline,
                  maxLines: 4,
                  autofocus: false,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.transparent,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0))),
                    labelText: "Comment",
                  ),
                ),
              ),
              SizedBox(height: 10,),
              CustomButtons(
                buttonContentText: "Submit",
                firstColorOfGradient: Color(0xFFF54B64),
                secondColorOfGradient: Color(0xFFF78361),
                textFirstColor: Color(0xFFFFFFFF),
                textSecondColor: Color(0xFFFFFFFF),
                customOnTapFunction: HomePage(),
              ),
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                child: Card(
                  color: kMyCardColour,
                  shadowColor: Colors.black,
                  //List of All comments in Text Widget
                  child: Text("All Comments", style: _textStyle,),
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
