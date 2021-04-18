import 'package:final_app/login_page.dart';
import 'package:final_app/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'custom_widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
          //This is for background image for this page
          image: DecorationImage(
            image: AssetImage("images/college1.jpg"),
              fit: BoxFit.cover
          )
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          // appBar: AppBar(
          //   title: Text(app_name),
          // ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButtons(
                  buttonContentText: "Login",
                  firstColorOfGradient: Color(0xFFF54B64),
                  secondColorOfGradient: Color(0xFFF78361),
                  textFirstColor: Color(0xFFFFFFFF),
                  textSecondColor: Color(0xFFFFFFFF),
                  customOnTapFunction: LoginPage()
                ),
                SizedBox(
                  height: 10.0,
                ),
                CustomButtons(
                  buttonContentText: "Sign Up",
                  textFirstColor: Color(0xFFF54B64),
                  textSecondColor: Color(0xFFF78361),
                  firstColorOfGradient: Color(0xFFFFFFFF),
                  secondColorOfGradient: Color(0xFFFFFFFF),
                  customOnTapFunction: SignUpPage(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
