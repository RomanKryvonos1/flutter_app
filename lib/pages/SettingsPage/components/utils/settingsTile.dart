import 'package:flutter/material.dart';

class SettingsTile extends StatefulWidget {
  final String label;

  const SettingsTile({super.key, required this.label});

  @override
  State<SettingsTile> createState() => _SettingsTileState();
}

class _SettingsTileState extends State<SettingsTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: OutlinedButton(
        onPressed: null,
        child: Text(widget.label),
      ),
    );
  }
}
