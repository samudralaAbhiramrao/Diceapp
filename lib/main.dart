import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(diceapp());
}

class diceapp extends StatefulWidget {
  const diceapp({Key? key}) : super(key: key);

  @override
  _diceappState createState() => _diceappState();
}

class _diceappState extends State<diceapp> {
//  const diceapp({Key? key}) : super(key: key);
  int leftbutton1 = 1;
  int rightbutton1 = 3;
  void updatingvalue() {
    leftbutton1 = Random().nextInt(6) + 1;
    rightbutton1 = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title: Text(
            "Dice App",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                // flex: 5,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset('images/dice$leftbutton1.png'),
                ),
              ),
              Expanded(
                  //  flex: 5
                  child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset('images/dice$rightbutton1.png'),
              )),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 50.0, 50.0, 0),
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        updatingvalue();
                      });
                    },
                    child: Text(
                      "ROLL",
                      style: TextStyle(color: Colors.red),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
