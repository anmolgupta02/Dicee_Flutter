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
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
              child: FlatButton(
            onPressed: () {
              print('Left Button Got Clicked');
            },
            child: Image.asset('images/dice2.png'),
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
                image: AssetImage('images/dice1.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
