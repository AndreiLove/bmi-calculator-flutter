import 'package:bmi_calculator/components/buttom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

import '../components/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmiResults,
      @required this.resultText,
      @required this.interpretation});

  final String bmiResults;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
              child: Text(
            'YOUR RESULT',
            style: kLargeButtonText,
          )),
          Expanded(
              child: ReusableCard(
            colour: kActiveCardColour,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  resultText.toUpperCase(),
                  style: kResultTextStyle,
                ),
                Text(
                  bmiResults,
                  style: kBMItextStyle,
                ),
                Text(interpretation,
                    textAlign: TextAlign.center, style: kLabelTextStyle),
              ],
            ),
          )),
          ButtomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: 'RE-CALCULATE')
        ],
      ),
    );
  }
}
