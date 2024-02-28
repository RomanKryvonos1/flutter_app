import 'package:flutter/material.dart';

import '../utils/settingsTile.dart';

class Button extends StatefulWidget {
  static String defaultImage =
      'https://cdn-icons-png.flaticon.com/256/149/149071.png';

  const Button({super.key});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: CircleAvatar(
            radius: 83,
            backgroundColor: Colors.black,
            child: CircleAvatar(
              radius: 80,
              child: Image.network(Button.defaultImage),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Text(
              "name",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
            ),
          ),
        ),
        SettingsTile(
          label: 'Edit Profile',
          icon: Icons.edit,
          sufixIcons: true,
        ),
        SettingsTile(
          label: 'Accounts',
          icon: Icons.person,
          sufixIcons: true,
        ),
        SettingsTile(
          label: 'Privacy and Safety',
          icon: Icons.verified_user,
          sufixIcons: true,
        ),
        SettingsTile(
          isOn: true,
          withSwitch: true,
          label: 'Notofications',
          icon: Icons.notifications,
        ),
        SizedBox(
          height: 80,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text('General',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700)),
            ),
          ),
        ),
        SettingsTile(
          label: 'Languages and Input',
          icon: Icons.language,
          sufixIcons: true,
        ),
        SettingsTile(
          label: 'Data usage',
          icon: Icons.data_usage,
          sufixIcons: true,
        ),
        SettingsTile(
          label: 'Accessbility',
          icon: Icons.vpn_key,
          sufixIcons: true,
        ),
        SettingsTile(
          label: 'Dark',
          icon: Icons.dark_mode,
          withSwitch: true,
          isOn: false,
        ),
        SizedBox(
          height: 50,
        ),
        SettingsTile(
          label: 'Help Center',
          icon: Icons.question_mark,
          sufixIcons: true,
        ),
        SettingsTile(
          label: 'About us',
          icon: Icons.warning,
          sufixIcons: true,
        ),
        SizedBox(
          height: 50,
        ),
        SettingsTile(
          sufixIcons: true,
          label: 'Delete Account',
          icon: Icons.delete_forever,
          isDeleteButton: true,
        ),
        SettingsTile(
          sufixIcons: true,
          label: 'Logout',
          icon: Icons.logout,
        ),
      ],
    );
  }
}
