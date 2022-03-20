import 'package:example/screens/firstScreen.dart';
import 'package:example/screens/secondScreen.dart';
import 'package:example/screens/thirdScreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => MyApp(),
        "/first": (context) => FirstScreen(),
        "/second": (context) => SecondScreen(),
        "/third": (context) => ThirdScreen(),
      },
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: GridView.count(
        scrollDirection: Axis.vertical,
        crossAxisCount: 2,
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/first");
            },
            child: Card(
              child: Hero(
                tag: 'hero1',
                child: Image.asset(
                  "assets/images/horse.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/second");
            },
            child: Card(
              child: Hero(
                tag: 'hero2',
                child: Image.asset(
                  "assets/images/sun.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/third");
            },
            child: Card(
              child: Hero(
                tag: 'hero3',
                child: Image.asset(
                  "assets/images/water.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
