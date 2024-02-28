import 'package:flutter/material.dart';
import 'package:flutter_app/pages/Login/main.dart';
import 'package:flutter_app/pages/Settings/components/Button/main.dart';

import '../drawer.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        drawer: MainDrawer(),
        appBar: AppBar(
          title: Text(
            'Heelo'
            ,style: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.w700),
          ),
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: Button(),
        ));
  }
}
