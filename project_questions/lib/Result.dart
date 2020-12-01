import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final String text;
  final int result;
  Result(this.text, this.result);

  String get level {
   return this.result < 8 ? 'amateur' :
        this.result < 12 ? 'intermediate' :
            this.result < 16 ? 'professional' :
                'jedi';
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        level,
        style: TextStyle(fontSize: 24),
      )
    );
  }


}