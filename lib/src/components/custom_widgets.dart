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
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
        padding: EdgeInsets.all(0.0),
        child: Ink(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [firstColorOfGradient, secondColorOfGradient],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(50.0)),
          child: Container(
            constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextFormField(
        keyboardType: textInputType,
        obscureText: isPassword,
        autofocus: false,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.transparent,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.0))),
          labelText: hintLable,
        ),
      ),
    );
  }
}
