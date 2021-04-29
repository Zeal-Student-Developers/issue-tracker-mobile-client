import 'package:flutter/material.dart';
import 'package:final_app/themes.dart';
import 'file:///C:/Users/vaish/Desktop/issue-tracker-mobile-client/lib/src/components/login_page/components/text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final bool hidePassword = true;
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
