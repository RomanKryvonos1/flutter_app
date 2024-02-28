import 'package:flutter/material.dart';
import 'package:flutter_app/pages/ChatPages/components/Messages.dart';

import '../drawer.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  static final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      endDrawer: Drawer(
        //backgroundColor: Colors.white,
      ),
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(2),
          child: Container(
            color: Colors.white,
            height: 2,
          ),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () => _scaffoldKey.currentState?.openEndDrawer(),
              icon: Icon(Icons.settings))
        ],
        title: Text(
          "Roman Kryvonos",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 700,
            child: ListView(
              children: [
                MyMessage(),
                Message(),
                MyMessage(),
                Message(),
                MyMessage(),
                Message(),
                MyMessage(),
                MyMessage(),
                Message(),
                MyMessage(),
                Message(),
                MyMessage(),
                Message(),
              ],
            ),
          ),
          SizedBox(
              height: 115,
              child: DecoratedBox(
                child: Padding(
                  padding: const EdgeInsets.only(top: 25, bottom: 25),
                  child: TextFormField(
                      controller: myController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.black12,
                        icon: new IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.emoji_emotions,
                            color: Colors.black45,
                          ),
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.send,
                            color: Colors.black45,
                          ),
                        ),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        labelText: 'Message',
                      ),
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w400)),
                ),
                decoration: const BoxDecoration(color: Colors.white54),
              ))
        ],
      ),
    );
  }
}
