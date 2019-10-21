import 'package:flutter/material.dart';

class ButtonControl extends StatelessWidget {

  final Function changeTextHandler;

  ButtonControl(this.changeTextHandler);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('Change'),
      color: Colors.blue,
      textColor: Colors.white,
      onPressed: changeTextHandler,
    );
  }
}