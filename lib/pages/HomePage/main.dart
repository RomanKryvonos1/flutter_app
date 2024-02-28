import 'package:flutter/material.dart';

import '../drawer.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          actions: [
            SizedBox(
                height: 50.0,
                width: 50.0,
                child: IconButton(
                  icon: Icon(Icons.person),
                  onPressed: () {},
                ))
          ],
          title: Text(
            'Home Page',
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700),
          ),
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Color.fromRGBO(18, 57, 128, 1),
        ),
        body: Center(
            child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: decoration,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [],
          ),
        )));
  }
}
