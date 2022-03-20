import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SUN"),
      ),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Hero(
                tag: 'hero2',
                child: Image.asset(
                  "assets/images/sun.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "SUN",
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
                  "The Sun is a G-type main-sequence star. The Sun comprises about 99.86% of the mass of the Solar System. The Sun has an absolute magnitude of +4.83. It is estimated to be brighter than about 85% of the stars in the Milky Way galaxy. The Sun is a Population I star.",
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
