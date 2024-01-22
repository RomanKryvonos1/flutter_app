import 'package:flutter/material.dart';
import 'package:flutter_app/pages/SettingsPage/components/utils/settingsTile.dart';

import '../drawer.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  final BoxDecoration decoration = BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: <Color>[
          Color.fromARGB(255, 137, 192, 237),
          Color.fromARGB(255, 26, 26, 150)
        ]),
  );
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DarwerMain(),
        appBar: AppBar(
          title: Text(
            'Settings Page',
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700),
          ),
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.blue,
        ),
        body: Center(
            child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: decoration,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [SettingsTile(label: 'Profile')],
          ),
        )));
  }
}
