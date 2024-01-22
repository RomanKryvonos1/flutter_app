import 'package:flutter/material.dart';

import '../utils/settingsTile.dart';

class Button extends StatefulWidget {
  const Button({super.key});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SettingsTile(
          label: 'Profil',
          icon: Icons.person,
        ),
        SettingsTile(
          label: 'Notofications',
          icon: Icons.notifications,
        ),
        SettingsTile(
          label: 'Theme',
          icon: Icons.lightbulb_rounded,
        ),
        SettingsTile(
          label: 'Logout',
          icon: Icons.logout,
        ),
        SettingsTile(
          label: 'Delete Account',
          icon: Icons.delete_forever,
        ),
      ],
    );
  }
}
