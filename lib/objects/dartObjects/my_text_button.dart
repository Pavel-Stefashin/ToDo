import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyTextButton extends StatelessWidget {
  final String text;
  // ignore: prefer_typing_uninitialized_variables
  var action;

  MyTextButton({super.key, required this.text, required this.action});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: action,
      style: TextButton.styleFrom(
        foregroundColor: Colors.amberAccent,
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      child: Text(text),
    );
  }
}