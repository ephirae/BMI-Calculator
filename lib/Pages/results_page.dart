import 'package:bmi_calculator/constants.dart';
import 'file:///C:/Users/MaryM/Documents/GitHub/BMI-Calculator/lib/Components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../Components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  'Your Result',
                  style: kLargeTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Text(
                        '[Classification]',
                        style: kFairResult,
                      ),
                      Text(
                        '[BMI]',
                        style: kBMIStyle,
                      ),
                      Text(
                        '[Info]',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonText: 'RE-CALCULATE',
            function: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}

