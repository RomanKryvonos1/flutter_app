import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final IconData icon;
  final String hintText;
  final bool obscureText;

  const InputField(
      {super.key,
      required this.icon,
      required this.hintText,
      this.obscureText = false});

  @override
  State<InputField> createState() => _InputState();
}

class _InputState extends State<InputField> {
  late IconData suffixIcon;
  late bool obscureText;

  @override
  void initState() {
    super.initState();

    suffixIcon = Icons.visibility;

    obscureText = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(35, 0, 35, 0),
      child: Theme(
          data: ThemeData(
              textSelectionTheme:
                  TextSelectionThemeData(selectionColor: Colors.grey)),
          child: TextField(
            cursorColor: Colors.white,
            obscureText: obscureText,
            decoration: InputDecoration(
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 1.0,
                  ),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 1.0,
                  ),
                ),
                prefixIconConstraints: BoxConstraints(minWidth: 18.0),
                prefixIcon: Container(
                    margin: EdgeInsets.only(right: 8.0),
                    child: Icon(
                      widget.icon,
                      color: Colors.white,
                    )),
                hintText: widget.hintText,
                hintStyle: const TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
                suffixIcon: widget.obscureText
                    ? IconButton(
                        icon: Icon(suffixIcon),
                        color: Colors.white,
                        onPressed: () {
                          setState(() {
                            obscureText = !obscureText;
                            suffixIcon = obscureText
                                ? Icons.visibility
                                : Icons.visibility_off;
                          });
                        },
                      )
                    : null),
            style: const TextStyle(color: Colors.white),
          )),
    );
  }
}
