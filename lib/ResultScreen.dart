import 'package:bmi_calculator/Constants.dart';
import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';

import 'reusable_card.dart';

class ResultScreen extends StatelessWidget {
  final String resultTitle;
  final String resultValue;
  final String resultDescription;

  const ResultScreen(
      {@required this.resultTitle,
      @required this.resultValue,
      @required this.resultDescription});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 20.0, left: 10.0),
              child: Text(
                'Your Result',
                style: kResultPageLargeText,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCardContainer(
              color: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Text(
                      resultTitle.toUpperCase(),
                      style: kResultTitleText,
                    ),
                  ),
                  Center(
                    child: Text(
                      resultValue,
                      style: kResultValueText,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Text(
                      resultDescription,
                      style: kResultDescription,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomBigButton(
            res: 'RECALCULATE',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
