import 'package:bmi_calculator/components/roundIconButton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:bmi_calculator/constants.dart';

class IncrementCard extends StatelessWidget {
  final String label;
  final int value;
  final Function onPressMinus;
  final Function onPressPlus;

  IncrementCard(
      {@required this.label,
        @required this.value,
        @required this.onPressMinus,
        @required this.onPressPlus});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(label, style: kLabelTextStyle),
        Text(value.toString(), style: kNumberTextStyle),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RoundIconButton(
              icon: FontAwesomeIcons.minus,
              onPress: onPressMinus,
            ),
            SizedBox(
              width: 10,
            ),
            RoundIconButton(
              icon: FontAwesomeIcons.plus,
              onPress: onPressPlus,
            ),
          ],
        )
      ],
    );
  }
}