import 'package:flutter/material.dart';

import '../constants.dart';

class ButtomButton extends StatelessWidget {
  ButtomButton({@required this.onTap, @required this.buttonTitle});

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonText,
          ),
        ),
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kBottomContainerHeight,
        decoration: BoxDecoration(
            color: kBottomCardColour, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
