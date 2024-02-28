import 'package:flutter/material.dart';
import 'package:flutter_app/pages/Settings/components/Button/main.dart';

class MassageTile extends StatefulWidget {
  final IconData icon;
  final String name;
  final void Function()? onPressed;

  const MassageTile(
      {super.key,
      required this.icon,
      required this.name,
      required this.onPressed});

  @override
  State<MassageTile> createState() => _MassageTileState();
}

class _MassageTileState extends State<MassageTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, left: 7, right: 7),
      child: SizedBox(
        height: 75,
        width: 500,
        child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
          onPressed: widget.onPressed,
          icon: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 27,
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.black,
                  child: Image.network(Button.defaultImage),
                ),
              ),
            ],
          ),
          label: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  " " + widget.name,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Hello!',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
