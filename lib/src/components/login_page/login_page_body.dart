import 'package:final_app/src/api/issues_api_service.dart';
import 'package:final_app/src/components/bottom_navigation_bar/nav_bar.dart';
import 'package:final_app/src/api/login_api_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:final_app/src/components/login_page/components/rounded_button.dart';
import 'package:final_app/src/components/login_page/components/rounded_input_field.dart';
import 'package:final_app/src/components/login_page/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:final_app/src/components/login_page/background.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Body extends StatefulWidget {
  const Body({
    Key? key,
  }) : super(key: key);
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late SharedPreferences prefs;
  late APIService apiService;
  String loginpassword = '';
  String roll_no = '';

  @override
  void initState() {
    apiService = new APIService();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light
        .copyWith(statusBarColor: Colors.transparent));

    bool _validateZprn() {
      if (roll_no.length == 7) {
        return true;
      } else {
        return false;
      }
    }

    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "images/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Username",
              onChanged: (value) => roll_no = value,
            ),
            RoundedPasswordField(
              onChanged: (value) => loginpassword = value,
            ),
            RoundedButton(
              text: "LOGIN",
              press: () async {
                if (_validateZprn()) {
                  dynamic response =
                      await apiService.login(roll_no, loginpassword);
                  prefs = await SharedPreferences.getInstance();
                  //print(prefs.getString("token"));
                  if (response['error']) {
                    //print('something is wrong');
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NavBar(),
                      ),
                    );
                  }
                  // print(requestModel.toJson());
                } else {
                  showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      title: Text("Invalid username!"),
                      content: Text("Please enter a valid ZPRN"),
                      actions: <Widget>[
                        FlatButton(
                          onPressed: () {
                            Navigator.of(ctx).pop();
                          },
                          child: Text("okay"),
                        ),
                      ],
                    ),
                  );
                }
              },
            ),
            SizedBox(height: size.height * 0.03),
          ],
        ),
      ),
    );
  }
}
