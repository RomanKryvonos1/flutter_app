import 'package:flutter/material.dart';
import 'package:flutter_app/pages/Login/components/Header/main.dart';
import 'package:flutter_app/pages/Login/components/Input/main.dart';
import 'components/Button/main.dart';
import 'components/CheckBox/main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    const BoxDecoration decoration = BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: <Color>[
            Color.fromARGB(255, 137, 192, 237),
            Color.fromARGB(255, 26, 26, 150)
          ]),
    );

    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: decoration,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HeaderIcon(icon: Icons.person_outline_rounded, radius: 50),
              Header(label: 'CUSTOMER LOGIN'),
              InputField(
                hintText: 'Email',
                icon: Icons.email,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 25, top: 30),
                child: InputField(
                  hintText: 'Password',
                  icon: Icons.lock,
                  obscureText: true,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 25),
                child: CheckBox(
                  isChecked: false,
                  label: 'Remember me',
                ),
              ),
              Button(
                label: 'LOGIN',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
