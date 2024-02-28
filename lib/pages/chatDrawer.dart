import 'package:flutter/material.dart';
import 'package:flutter_app/auth/auth_service.dart';
import 'package:flutter_app/pages/HomePage/main.dart';
import 'package:flutter_app/pages/Login/main.dart';
import 'package:flutter_app/pages/Settings/main.dart';
import 'package:provider/provider.dart';

class ChatDrawer extends StatefulWidget {
  const ChatDrawer({super.key});

  @override
  State<ChatDrawer> createState() => _ChatDrawerState();
}

class _ChatDrawerState extends State<ChatDrawer> {
  final TextStyle txtStyle =
  TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600);

  goToSettings() {
    setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SettingsPage()),
      );
    });
  }

  void signOut() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(children: [
        SizedBox(
          height: 150,
          child: DrawerHeader(
            child: Text(
              'My chat',
              style: TextStyle(
                  color: Colors.black,
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
            iconColor: Colors.black,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            }),
        ListTile(
          title: Text('Chats', style: txtStyle),
          leading: Icon(Icons.messenger),
          iconColor: Colors.black,
        ),
        ListTile(
          title: Text('Notifications', style: txtStyle),
          leading: Icon(Icons.notifications),
          iconColor: Colors.black,
        ),
        ListTile(
            title: Text('Contacts', style: txtStyle),
            leading: Icon(Icons.book_rounded),
            iconColor: Colors.black,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            }),
        ListTile(
            title: Text('Settings', style: txtStyle),
            leading: Icon(Icons.settings),
            iconColor: Colors.black,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsPage()),
              );
            }),
        ListTile(
            title: Text('Logout', style: txtStyle),
            leading: Icon(Icons.logout),
            iconColor: Colors.black,
            onTap: () {
              signOut();
            }),
      ]),
    );
  }
}
