import 'package:flutter/material.dart';
import 'package:flutter_app/pages/HomePage/main.dart';
import 'package:flutter_app/pages/Login/main.dart';
import 'package:flutter_app/pages/Settings/main.dart';

class DarwerMain extends StatefulWidget {
  const DarwerMain({super.key});

  @override
  State<DarwerMain> createState() => _DarwerMainState();
}

class _DarwerMainState extends State<DarwerMain> {
  final TextStyle txtStyle =
      TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600);

  goToSettings() {
    setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SettingsPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromRGBO(18, 57, 128, 1),
      child: Column(children: [
        SizedBox(
          height: 150,
          child: DrawerHeader(
            child: Text(
              'My chat',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
        Container(
          height: 25,
        ),
        ListTile(
            title: Text('Home', style: txtStyle),
            leading: Icon(Icons.home),
            iconColor: Colors.white,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            }),
        ListTile(
          title: Text('Notifications', style: txtStyle),
          leading: Icon(Icons.notifications),
          iconColor: Colors.white,
        ),
        ListTile(
            title: Text('Settings', style: txtStyle),
            leading: Icon(Icons.settings),
            iconColor: Colors.white,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsPage()),
              );
            }),
        ListTile(
            title: Text('Logout', style: txtStyle),
            leading: Icon(Icons.logout),
            iconColor: Colors.white,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            }),
      ]),
    );
  }
}
