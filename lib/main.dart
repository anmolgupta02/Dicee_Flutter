import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade400,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.blue.shade500,
        ),
        body: DicePageFul(),
      ),
    ),
  );
}

class DicePageFul extends StatefulWidget {
  @override
  _DicePageFulState createState() => _DicePageFulState();
}

class _DicePageFulState extends State<DicePageFul> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;

  void changeNum() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
              child: FlatButton(
                onPressed: () {
                  changeNum();
                  print('Left Button Got Clicked');
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              )
//          Image(
//            image: AssetImage('images/dice1.png'),
//          ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeNum();
                print('Right Button Got Clicked');
              },
              child: Image(
                image: AssetImage('images/dice$rightDiceNumber.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}


class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var leftDiceNumber = '5';
    dynamic rightDiceNumber = '4';

    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
              child: FlatButton(
                onPressed: () {
                  print('Left Button Got Clicked');
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              )
//          Image(
//            image: AssetImage('images/dice1.png'),
//          ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                print('Right Button Got Clicked');
              },
              child: Image(
                image: AssetImage('images/dice$rightDiceNumber.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
