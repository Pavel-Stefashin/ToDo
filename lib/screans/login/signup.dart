import 'package:flutter/material.dart';
import 'package:flutter_todo/objects/dartObjects/mapping.dart';
import 'package:flutter_todo/objects/dartObjects/my_text_button.dart';
import '../../objects/dartObjects/my_outlined_button.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

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
                    Text("Создание аккаунта"),
                  ],
                ),
              ),
              const Expanded(
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Имя пользователя",
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Логин",
                        helperText: "Адресс электронной почты",
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Пароль",
                        helperText: "Придумайте пароль",
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    MyOutlinedButton(
                        text: "зарегистрироваться",
                        action: () => GoToHome(context)),
                    MyTextButton(
                        text: "войти", 
                        action: () => GoToSignin(context)),
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
