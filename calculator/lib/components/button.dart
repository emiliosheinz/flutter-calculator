import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Color textColor;
  final Color backgroundColor;
  final String contentText;
  final bool isLong;
  final Function onPress;

  Button({
    @required this.textColor,
    @required this.backgroundColor,
    @required this.contentText,
    @required this.onPress,
    this.isLong = false,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: isLong ? 2 : 1,
      child: Container(
        height: double.infinity,
        width: double.infinity,
        margin: EdgeInsets.all(8),
        child: Material(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(100),
          child: InkWell(
            onTap: () {
              onPress(contentText);
            },
            borderRadius: BorderRadius.circular(100),
            splashColor: Color.fromRGBO(255, 255, 255, 0.2),
            highlightColor: Color.fromRGBO(255, 255, 255, 0.3),
            child: Padding(
              padding: EdgeInsets.only(left: isLong ? 35 : 0),
              child: Align(
                alignment: isLong ? Alignment.centerLeft : Alignment.center,
                child: Text(
                  contentText,
                  style: TextStyle(
                    fontSize: 36,
                    color: textColor,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
