import 'package:flutter/material.dart';

import '../constant/constants.dart';

class getRow extends StatelessWidget {
  String text1 = '';
  String text2 = '';
  String text3 = '';
  String text4 = '';

  getRow({Key? key,
    this.text1 = '',
    this.text2 = '',
    this.text3 = '',
    this.text4 = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            shape: CircleBorder(
              side: BorderSide(width: 0, color: Colors.transparent),
            ),
            backgroundColor: getBackgroundColor(text1),
          ),
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Text(
              '${text1}',
              style: TextStyle(fontSize: 26, color: getTextColor(text1)),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            shape: CircleBorder(
              side: BorderSide(width: 0, color: Colors.transparent),
            ),
            backgroundColor: getBackgroundColor(text2),
          ),
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Text(
              '${text2}',
              style: TextStyle(fontSize: 26, color: getTextColor(text2)),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            shape: CircleBorder(
              side: BorderSide(width: 0, color: Colors.transparent),
            ),
            backgroundColor: getBackgroundColor(text3),
          ),
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Text(
              '${text3}',
              style: TextStyle(fontSize: 26, color: getTextColor(text3)),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            shape: CircleBorder(
              side: BorderSide(width: 0, color: Colors.transparent),
            ),
            backgroundColor: getBackgroundColor(text4),
          ),
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Text(
              '${text4}',
              style: TextStyle(fontSize: 26, color: getTextColor(text4)),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }

  bool isOperator(String text) {
    var list = ['ac', 'ce', '%', '/', '*', '-', '+', '='];

    for (var item in list) {
      if (text == item) {
        return true;
      }
    }
    return false;
  }

  Color getBackgroundColor(String text) {
    if (isOperator(text)) {
      return backgroundGreyDark;
    } else {
      return backgroundGrey;
    }
  }

  Color getTextColor(String text) {
    if (isOperator(text)) {
      return textGreen;
    } else {
      return textGrey;
    }
  }


}
