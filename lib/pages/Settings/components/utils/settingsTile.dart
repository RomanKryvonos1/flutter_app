import 'package:flutter/material.dart';
import 'package:flutter_app/Themes/theme_Manager.dart';

ThemeManager _themeManager = ThemeManager();

class SettingsTile extends StatefulWidget {
  final String label;
  final IconData icon;
  final bool ignore;
  final bool withSwitch;
  final bool sufixIcons;
  final bool isDeleteButton;
  Color color;
  bool isOn;

  SettingsTile(
      {super.key,
      required this.label,
      required this.icon,
      this.ignore = true,
      this.withSwitch = false,
      this.isOn = false,
      this.sufixIcons = false,
      this.isDeleteButton = false,
      this.color = Colors.black});

  @override
  State<SettingsTile> createState() => _SettingsTileState();
}

class _SettingsTileState extends State<SettingsTile> {
  @override
  void dispose() {
    _themeManager.removeListener(themeListener);
    super.dispose();
  }

  void initState() {
    _themeManager.addListener(() {});
    super.initState();
  }

  themeListener() {
    if (mounted) {
      setState(() {});
    }
  }

  Widget build(BuildContext context) {
    if (widget.isDeleteButton) {
      widget.color = Colors.red;
    }
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
      child: SizedBox(
        height: 70,
        child: ElevatedButton.icon(
          icon: Icon(
            widget.icon,
            color: widget.color,
            size: 30.0,
          ),
          label: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Text(
                  widget.label,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
              ),
              Visibility(
                visible: widget.withSwitch,
                child: Switch(
                    value: _themeManager.themeMode == ThemeMode.dark,
                    onChanged: (newValue) {
                      _themeManager.toggleTheme(newValue);
                    }),
              ),
              Visibility(
                  visible: widget.sufixIcons,
                  child: Icon(Icons.arrow_forward_ios)),
            ],
          ),
          onPressed: () {
            print('');
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: widget.color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
      ),
    );
  }
}
