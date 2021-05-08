import 'package:final_app/themes.dart';
import 'package:flutter/material.dart';
import 'package:gradient_text/gradient_text.dart';

class CustomButtons extends StatelessWidget {
  final Color firstColorOfGradient,
      secondColorOfGradient,
      textFirstColor,
      textSecondColor;
  final String buttonContentText;
  final Widget customOnTapFunction;
  CustomButtons(
      {required this.customOnTapFunction,
      required this.firstColorOfGradient,
      required this.secondColorOfGradient,
      required this.buttonContentText,
      required this.textFirstColor,
      required this.textSecondColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => customOnTapFunction,
              ));
        },
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        child: Ink(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [firstColorOfGradient, secondColorOfGradient],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(00.0)),
          child: Container(
            constraints: BoxConstraints(maxWidth: 100.0, minHeight: 57.0),
            alignment: Alignment.center,
            child: GradientText(buttonContentText,
                textAlign: TextAlign.center,
                gradient:
                    LinearGradient(colors: [textFirstColor, textSecondColor]),
                style: TextStyle(fontWeight: FontWeight.bold)),
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String hintLable;
  final bool isPassword;
  final TextInputType textInputType;

  CustomTextField({
    required this.hintLable,
    required this.isPassword,
    required this.textInputType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      obscureText: isPassword,
      autofocus: false,
      decoration: InputDecoration(
        filled: true,
        fillColor: kMyCardColour,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(0.0)),
        ),
        labelText: hintLable,
        labelStyle: TextStyle(color: Colors.white),
      ),
      style: TextStyle(
        color: Colors.white,
      ),
    );
  }
}
