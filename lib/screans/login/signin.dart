import 'package:flutter_todo/objects/mapping.dart';
import 'package:flutter_todo/objects/my_outlined_button.dart';
import 'package:flutter_todo/objects/my_text_button.dart';
import 'package:flutter/material.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ToDo'),
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/SigninSignup', (remate) => false);
            },
            icon: const Icon(Icons.arrow_back_sharp)),
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.87,
          alignment: Alignment.center,
          child: Column(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    Text("Приветствую"),
                    Text("Войдите чтобы продолжить"),
                  ],
                ),
              ),
              const Expanded(
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
                    MyTextButton(
                      text: 'войти',
                      action: () => GoToHome(context),
                    ),
                    MyOutlinedButton(
                        text: "зарегистрироваться",
                        action: () => GoToSignup(context)),
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
