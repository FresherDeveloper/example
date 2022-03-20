import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HORSE"),
      ),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Hero(
                tag: 'hero1',
                child: Image.asset(
                  "assets/images/horse.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Two horses in nature - on a beautiful green meadow',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  " Horses have long necks, long legs, and singular solid hooves on the ends of their feet. Through years of breeding, humans have developed many different colors and patterns in their fur. Some of the most common colors are grey, dark reddish-brown (known as “bay”), and light brown (known as “chestnut”).",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                  ),
                  onPressed: () => Navigator.pop(context),
                  child: Text("Back"),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
