import 'package:flutter/material.dart';

class SettingsTile extends StatefulWidget {
  final String label;
  final IconData icon;

  const SettingsTile({super.key, required this.label, required this.icon});

  @override
  State<SettingsTile> createState() => _SettingsTileState();
}

class _SettingsTileState extends State<SettingsTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
        child: SizedBox(
          height: 75,
          width: 500,
          child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(18, 57, 128, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              onPressed: () {},
              icon: Icon(
                widget.icon,
                size: 35,
                color: Colors.white,
              ),
              label: Text(
                widget.label,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w700),
              )),
        ));
  }
}
