import 'package:flutter/material.dart';
import 'package:flutter_todo/objects/mapping.dart';
import 'package:flutter_todo/objects/my_outlined_button.dart';
import 'package:flutter_todo/objects/my_text_button.dart';

class SigninSignup extends StatelessWidget {
  const SigninSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.87,
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.centerLeft,
              //color: Colors.blue,
              child: const Row(
                children: [
                  Text('Todo',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500, //толщина линий
                          fontStyle: FontStyle.italic, //наклон
                          color: Color.fromRGBO(80, 80, 80, 1))),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Image.asset(
              'assets/images/man_with_laptop.png',
            ),
          ),
          const Expanded(
              flex: 2,
              child: Center(
                child: Column(
                  children: [
                    Text(
                      'Привет !',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Благодарим за доверие нам.'
                      '\nConCards - удобное приложение для всех твоих банковских карт!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              )),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Expanded(
                    child: Center(
                  child: Container(
                    //margin: EdgeInsets.all(10),
                    width: double
                        .infinity, //MediaQuery.of(context).size.width * 0.65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      //color: Color.fromRGBO(0, 0, 139, 100),
                    ),
                    child: MyTextButton(
                      text: 'войти',
                      action: () => GoToSignin(context),
                    ),
                  ),
                )),
                Expanded(
                  child: Center(
                      child: SizedBox(
                          //margin: EdgeInsets.all(12),
                          width: double.infinity,
                          child: MyOutlinedButton(
                              text: "заригестрироваться",
                              action: () => GoToSignup(context)))),
                ),
              ],
            ),
          )
        ],
      ),
    )));
  }
}
