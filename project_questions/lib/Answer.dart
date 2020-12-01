
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final String text;
  final void Function() onPressed;

  Answer(this.text, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        width: double.infinity,
        child: RaisedButton(
          child: Text(text),
          onPressed: this.onPressed,
          color: Colors.blueAccent,
          textColor: Colors.white,
        )
      )
    );
  }
}