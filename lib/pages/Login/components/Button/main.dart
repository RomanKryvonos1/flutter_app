import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final String label;

  const Button({
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
          onPressed: () {},
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
