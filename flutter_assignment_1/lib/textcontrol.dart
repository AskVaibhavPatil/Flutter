import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {

  final String textData;

  TextControl(this.textData);

  @override
  Widget build(BuildContext context) {
    return Text(
      textData,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold
      )
    );
  }
}