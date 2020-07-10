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
    return Container();
  }

}
