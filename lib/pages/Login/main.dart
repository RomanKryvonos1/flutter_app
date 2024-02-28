import 'package:flutter/material.dart';
import 'package:flutter_app/auth/auth_service.dart';
import 'package:flutter_app/pages/Login/components/Header/main.dart';
import 'package:flutter_app/pages/Login/components/Input/main.dart';
import 'package:provider/provider.dart';

import 'components/Button/main.dart';
import 'components/CheckBox/main.dart';

const BoxDecoration decoration = BoxDecoration(
  gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: <Color>[
        Color.fromARGB(255, 137, 192, 237),
        Color.fromARGB(255, 26, 26, 150)
      ]),
);

class LoginPage extends StatefulWidget {
  static final GlobalKey<FormState> thekey = GlobalKey<FormState>();
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late IconData suffixIcon;
  late bool obscureText = true;

  @override
  void initState() {
    super.initState();
    suffixIcon = Icons.visibility;

    obscureText = obscureText;
  }

  final emailController = TextEditingController();
  final passController = TextEditingController();

  void singIn() async {
    final authService = Provider.of<AuthService>(context, listen: false);

    try {
      await authService.signInWithEmailandPassword(
          emailController.text, passController.text);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            e.toString(),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
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
              Form(
                key: LoginPage.thekey,
                child: Column(
                  children: [
                    InputField(
                        icon: Icons.mail,
                        hintText: 'Email',
                        controller: emailController),
                    InputField(
                        icon: Icons.lock,
                        hintText: 'Password',
                        controller: passController,
                        obscureText: true)
                  ],
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
                onPressed: () {
                  if (LoginPage.thekey.currentState!.validate()) {
                    singIn();
                  }
                },
                label: 'LOGIN',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
