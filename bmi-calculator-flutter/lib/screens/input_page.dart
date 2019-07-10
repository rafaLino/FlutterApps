import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/genderCard.dart';
import 'package:bmi_calculator/components/incrementCard.dart';
import 'package:bmi_calculator/screens/results_page.dart';
import 'package:bmi_calculator/components/reusableCard.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectGender;
  int _height = 120;
  int _weight = 60;
  int _age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onTap: () {
                      setState(() {
                        selectGender = Gender.MALE;
                      });
                    },
                    colour: selectGender == Gender.MALE
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    child: GenderCard(
                      gender: Gender.MALE,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onTap: () {
                      setState(() {
                        selectGender = Gender.FEMALE;
                      });
                    },
                    colour: selectGender == Gender.FEMALE
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    child: GenderCard(
                      gender: Gender.FEMALE,
                    ),
                  ),
                ),
              ],
            )),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'HEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(_height.toString(), style: kNumberTextStyle),
                            Text(
                              'cm',
                              style: kLabelTextStyle,
                            ),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                              thumbShape:
                                  RoundSliderThumbShape(enabledThumbRadius: 12),
                              overlayShape:
                                  RoundSliderOverlayShape(overlayRadius: 30),
                              thumbColor: Color(0xFFEB1555),
                              overlayColor: Color(0x15EB1555),
                              activeTrackColor: Colors.white,
                              inactiveTrackColor: kSliderButtonInactiveColor),
                          child: Slider(
                            value: _height.toDouble(),
                            min: 120,
                            max: 220,
                            onChanged: (double value) {
                              setState(() {
                                _height = value.round();
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColor,
                    child: IncrementCard(
                        label: 'WEIGHT',
                        value: _weight,
                        onPressMinus: () {
                          setState(() {
                            if (_weight > 0) _weight--;
                          });
                        },
                        onPressPlus: () {
                          setState(() {
                            _weight++;
                          });
                        }),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColor,
                    child: IncrementCard(
                      label: 'AGE',
                      value: _age,
                      onPressMinus: () {
                        setState(() {
                          if (_age > 0) _age--;
                        });
                      },
                      onPressPlus: () {
                        setState(() {
                          _age++;
                        });
                      },
                    ),
                  ),
                ),
              ],
            )),
            BottomButton(
              buttonTitle: 'CALCULATE',
              onTap: () {
                CalculatorBrain calc = CalculatorBrain(height: _height,weight: _weight);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context) => ResultsPage(),
                    settings: RouteSettings(
                      arguments: calc
                    )));
              },
            ),
          ],
        ));
  }
}


