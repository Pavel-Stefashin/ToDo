import 'package:flutter/material.dart';
import 'screans/login/signin_signup.dart';

void main() {
  runApp(
      MaterialApp(
        title: 'ToDo',

        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Color.fromRGBO(
              0, 32, 255, 1.0)),
          useMaterial3: true,
          textButtonTheme: TextButtonThemeData(
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Color.fromRGBO(0,21,170, 1)),
              shape:WidgetStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              ),
              textStyle: WidgetStatePropertyAll(
                  TextStyle(
                    fontSize: 18,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
              ),
            ),
          ),
          outlinedButtonTheme: OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(
              side: BorderSide(width: 3, color: Color.fromRGBO(0,21,170, 1)),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              textStyle: TextStyle(
                fontSize: 18,
                color: Color.fromRGBO(0,21,170, 1),
              ),
            ),
          ),
        ),
        home: const SigninSignup(),
      )
  );
}

