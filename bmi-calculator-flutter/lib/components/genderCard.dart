import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  MALE,
  FEMALE
}

class GenderCard extends StatelessWidget {

  final Gender gender;

  GenderCard({@required this.gender});

  bool _isMale(){
    return gender == Gender.MALE;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          _isMale() ? FontAwesomeIcons.mars : FontAwesomeIcons.venus,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          _isMale() ? 'MALE' : 'FEMALE',
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}