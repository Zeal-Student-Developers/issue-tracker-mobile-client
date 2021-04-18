import 'dart:ffi';

import 'package:final_app/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'custom_widgets.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/college2.jpg"),
            fit: BoxFit.cover
          )
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
            // appBar: AppBar(
            //   title: Text(app_name),
            // ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome Back",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40.0,
                      color: Color(0xFF4E586E)
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(
                  "Login to your Account",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    color: Color(0xFF4E586E)
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10.0),
                CustomTextField(hintLable: "Email", isPassword: false, textInputType: TextInputType.emailAddress,),
                SizedBox(height: 10.0,),
                CustomTextField(hintLable: "Password", isPassword: true, textInputType: TextInputType.visiblePassword),
                SizedBox(height: 10.0,),
                CustomButtons(
                    buttonContentText: "Login",
                    firstColorOfGradient: Color(0xFFF54B64),
                    secondColorOfGradient: Color(0xFFF78361),
                    textFirstColor: Color(0xFFFFFFFF),
                    textSecondColor: Color(0xFFFFFFFF),
                customOnTapFunction: HomePage(),
                ),
              ],
            )),
      ),
    );
  }
}

