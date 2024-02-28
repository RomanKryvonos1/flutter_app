import 'package:flutter/material.dart';
import 'package:flutter_app/pages/ChatPages/main.dart';
import 'package:flutter_app/pages/HomePage/components/massagesTile.dart';

import '../drawer.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  IconData icon = Icons.person;

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        drawer: DarwerMain(),
        appBar: AppBar(
          actions: [
            SizedBox(
                height: 50.0,
                width: 50.0,
                child: IconButton(
                  icon: Icon(Icons.person_add_alt_rounded),
                  onPressed: () {},
                ))
          ],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.telegram_outlined,
                color: Colors.black,
                size: 40,
              ),
              Text(
                'Chats',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: ListView(
            children: [
              MassageTile(
                icon: icon,
                name: 'Roman Kryvonos',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ChatPage()),
                  );
                },
              ),
            ],
          ),
        ));
  }
}
