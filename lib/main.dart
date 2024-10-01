import 'package:flutter/material.dart';
import 'package:flutter_todo/screans/home_page.dart';
import 'package:flutter_todo/screans/login/signin.dart';
import 'package:flutter_todo/screans/login/signup.dart';
import 'screans/login/signin_signup.dart';

void main() {
  runApp(
      MaterialApp(
        title: 'ToDo',
        // theme: ThemeData(
        //   colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromRGBO(
        //       0, 32, 255, 1.0)),
        //   useMaterial3: true,
        //   textButtonTheme: TextButtonThemeData(
        //     style: ButtonStyle(
        //       backgroundColor: const WidgetStatePropertyAll(Color.fromRGBO(0,21,170, 1)),
        //       shape:WidgetStatePropertyAll(RoundedRectangleBorder(
        //         borderRadius: BorderRadius.circular(10.0),
        //       ),
        //       ),
        //       textStyle: const WidgetStatePropertyAll(
        //           TextStyle(
        //             fontSize: 18,
        //             color: Color.fromRGBO(255, 255, 255, 1),
        //           ),
        //       ),
        //     ),
        //   ),
        //   outlinedButtonTheme: OutlinedButtonThemeData(
        //     style: OutlinedButton.styleFrom(
        //       side: const BorderSide(width: 3, color: Color.fromRGBO(0,21,170, 1)),
        //       shape: RoundedRectangleBorder(
        //         borderRadius: BorderRadius.circular(10.0),
        //       ),
        //       textStyle: const TextStyle(
        //         fontSize: 18,
        //         color: Color.fromRGBO(0,21,170, 1),
        //       ),
        //     ),
        //   ),
        // ),
        initialRoute: '/SigninSignup',
        routes: {
          '/': (context) => const HomePage(),
          '/SigninSignup': (context) => const SigninSignup(),
          '/Signin': (context) => const Signin(),
          '/Signup': (context) => const Signup(),
        },
      )
  );
}

