import 'file:///C:/Users/vaish/Desktop/issue-tracker-mobile-client/lib/src/view/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'custom_widgets.dart';
import 'main.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/college2.jpg"), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          // appBar: AppBar(
          //   title: Text(app_name),
          // ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Create an Account",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40.0,
                    color: Color(0xFF4E586E)),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 10.0),
              CustomTextField(
                  hintLable: "User Name",
                  isPassword: false,
                  textInputType: TextInputType.name),
              SizedBox(height: 10.0),
              CustomTextField(
                  hintLable: "Email",
                  isPassword: false,
                  textInputType: TextInputType.emailAddress),
              SizedBox(height: 10.0),
              CustomTextField(
                  hintLable: "Phone No",
                  isPassword: false,
                  textInputType: TextInputType.phone),
              SizedBox(height: 10.0),
              CustomTextField(
                  hintLable: "Date of Birth (dd-mm-yyyy)",
                  isPassword: false,
                  textInputType: TextInputType.datetime),
              SizedBox(height: 10.0),
              CustomTextField(
                  hintLable: "Password",
                  isPassword: true,
                  textInputType: TextInputType.visiblePassword),
              SizedBox(height: 10.0),
              CustomButtons(
                buttonContentText: "Register",
                firstColorOfGradient: Color(0xFFF54B64),
                secondColorOfGradient: Color(0xFFF78361),
                textFirstColor: Color(0xFFFFFFFF),
                textSecondColor: Color(0xFFFFFFFF),
                customOnTapFunction: HomePage(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
