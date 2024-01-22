import 'package:flutter/material.dart';

class DraweTiles extends StatefulWidget {
  final String label;
  final IconData icon;
  final Color color;
  //final Function ontap;

  const DraweTiles({
    super.key,
    required this.label,
    required this.icon,
    required this.color,
    //required this.ontap
  });

  @override
  State<DraweTiles> createState() => _DraweTilesState();
}

class _DraweTilesState extends State<DraweTiles> {
  get ontap => null;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.label,
        style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
      ),
      leading: Icon(widget.icon),
      iconColor: widget.color,
      // onTap: ontap,
    );
  }
}
