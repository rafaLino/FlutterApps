import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  final double margin;
  final double borderRadius;
  final Widget child;
  final Function onTap;



  ReusableCard(
      {this.colour = kActiveCardColor,
        this.margin = 15,
        this.borderRadius = 10,
        this.child,
        this.onTap,
      });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(margin),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: colour,
        ),
        child: child,
      ),
    );
  }
}