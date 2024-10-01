import 'package:flutter/material.dart';

class MyTextButton extends StatelessWidget {
  final String text;
  //final action;

  const MyTextButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){},
      style: TextButton.styleFrom(
        foregroundColor: Colors.amberAccent,
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),),
      child: Text(text),);
  }

  void GoToSignin(context){
    Navigator.pushNamed(context, '/Signin');
  }

}

