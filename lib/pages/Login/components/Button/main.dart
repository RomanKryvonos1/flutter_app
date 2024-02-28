import 'package:flutter/material.dart';
import 'package:flutter_app/pages/HomePage/main.dart';
import 'package:flutter_app/pages/Login/main.dart';

class Button extends StatefulWidget {
  final String label;

  Button({
    super.key,
    required this.label,
  });

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50, //height of button
        width: 375, //width of button
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
            ),
            backgroundColor: Color.fromRGBO(18, 57, 128, 1),
          ),
          onPressed: () {
            if (LoginPage.thekey.currentState!.validate()) {
              Navigator.pushReplacement(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => HomePage()));
            }
          },
          child: Text(
            widget.label,
            style: const TextStyle(
                fontSize: 18,
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ));
  }
}
