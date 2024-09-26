//import 'dart:collection';
//import 'dart:io';

import 'package:flutter/material.dart';
import 'signin.dart';

class SigninSignup extends StatelessWidget {
  const SigninSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.87,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.centerLeft,
                  //color: Colors.blue,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 5),
                        child: Image.asset('assets/images/logo.png', width: 50, height: 50,),
                      ),
                      Text('Todo',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500, //толщина линий
                            fontStyle: FontStyle.italic, //наклон
                            color: Color.fromRGBO(80, 80, 80, 1)
                          )
                      ),
                    ],
                  ),
                ),
                flex: 1,
              ),
              Expanded(
                  child: Container(
                    //color: Colors.red,
                    child: Image.asset('assets/images/man_with_laptop.png',),
                  ),
                  flex: 5,
              ),
              Expanded(
                  child: Container(
                    //color: Colors.orange,
                    child: Center(
                      child:
                          Column(
                            children: [
                              Text('Привет !',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                                fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                              ),
                              ),
                              Text('Благодарим за доверие нам.'
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
                    )
                  ),
                  flex: 2
              ),
              Expanded(
                flex: 2,
                  child: Container(
                    //color: Colors.yellow,
                    child: Column(
                      children: [
                        Expanded(
                            child: Center(
                              child: Container(
                                //margin: EdgeInsets.all(10),
                                width: double.infinity,//MediaQuery.of(context).size.width * 0.65,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    //color: Color.fromRGBO(0, 0, 139, 100),
                                ),
                                child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Signin()));
                                    },
                                    child: Text("войти",
                                       style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                        )),
                                ),
                              ),
                            )
                        ),
                         Expanded(
                           child: Center(
                               child: Container(
                                 //margin: EdgeInsets.all(12),
                                 width: double.infinity,
                                 child: OutlinedButton(
                                   onPressed: () {

                                   },
                                   child: Text('зарегистрироваться',),
                                 ),
                               )
                           ),
                         ),
                      ],
                    ),
                  ),
              )
            ],
          ),
        )
      )
    );
  }
}