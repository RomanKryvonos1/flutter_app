import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  bool isChecked = false;
  String label;

  CheckBox({
    super.key,
    required this.isChecked,
    required this.label,
  });

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 27, right: 35),
      child: Theme(
        data: Theme.of(context).copyWith(
          unselectedWidgetColor: Colors.white,
        ),
        child: ListTileTheme(
          horizontalTitleGap: 0.0,
          child: CheckboxListTile(
            contentPadding: EdgeInsets.zero,
            controlAffinity: ListTileControlAffinity.leading,
            title: Text(
              widget.label,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
            ),
            value: widget.isChecked,
            checkColor: Colors.white,
            activeColor: Color.fromRGBO(13, 35, 73, 1),
            side: BorderSide(color: Color.fromRGBO(13, 35, 73, 1)),
            onChanged: (bool? value) {
              setState(() {
                widget.isChecked = !widget.isChecked;
              });
            },
          ),
        ),
      ),
    );
  }
}
