import 'package:flutter_todo/screans/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_todo/screans/login/signup.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToDo'),
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.87,
          alignment: Alignment.center,
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Text("Приветствую"),
                    Text("Войдите чтобы продолжить"),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Логин",
                        helperText: "Адресс электронной почты",
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Пароль",
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                        child: Text("Войти")),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Signup()));
                        },
                        child: Text("Зарегистрироваться")),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
