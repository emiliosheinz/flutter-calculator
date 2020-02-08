import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  final String contentText;

  Display({this.contentText = '0'});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Text(
          contentText,
          style: TextStyle(color: Colors.white, fontSize: 94),
        ),
      ),
    );
  }
}
