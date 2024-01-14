import 'package:flutter/material.dart';

class HeaderIcon extends StatefulWidget {
  final IconData icon;
  final double radius;

  HeaderIcon({
    super.key,
    required this.icon,
    required this.radius,
  });

  @override
  State<HeaderIcon> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<HeaderIcon> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(widget.radius)),
        color: Color.fromARGB(121, 11, 55, 91),
      ),
      child: Icon(
        widget.icon,
        size: 60,
        color: Color.fromARGB(255, 255, 255, 255),
      ),
    );
  }
}

class Header extends StatefulWidget {
  String label;

  Header({
    super.key,
    required this.label,
  });

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 40),
      child: Text(
        widget.label,
        style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w300,
            letterSpacing: 4),
      ),
    );
  }
}