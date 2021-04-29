import 'package:final_app/src/components/bottom_navigation_bar/nav_bar.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/vaish/Desktop/issue-tracker-mobile-client/lib/src/components/login_page/components/rounded_button.dart';
import 'file:///C:/Users/vaish/Desktop/issue-tracker-mobile-client/lib/src/components/login_page/components/rounded_input_field.dart';
import 'file:///C:/Users/vaish/Desktop/issue-tracker-mobile-client/lib/src/components/login_page/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:final_app/src/components/login_page/background.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String roll_no = '';

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
              hintText: "Your ZPRN",
              onChanged: (value) => roll_no = value,
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                if (_validateZprn()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NavBar(),
                    ),
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      title: Text("Invalid ZPRN!"),
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
