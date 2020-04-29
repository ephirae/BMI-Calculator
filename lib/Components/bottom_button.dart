import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.buttonText, @required this.function});

  final String buttonText;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
          child: Center(
            child: Text(
              buttonText,
              style: kLargeTextStyle,
            ),
          ),
          color: kBottomContainerColour,
          margin: EdgeInsets.only(top: 10),
          width: double.infinity,
          height: kBottomContainerHeight),
    );
  }
}
