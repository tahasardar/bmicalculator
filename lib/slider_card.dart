// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:bmicalculator/constants.dart';
import 'package:flutter/material.dart';

class SliderCard extends StatelessWidget {
  const SliderCard({super.key, required this.height, this.onChange});
  final int height;
  final dynamic onChange;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Height".toUpperCase(),
          style: klabelStyle,
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: <Widget>[
            Text(
              "$height",
              style: TextStyle(fontSize: 40),
            ),
            Text(
              'cm',
              style: TextStyle(color: klabelColor, fontSize: 20),
            )
          ],
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            thumbShape: RoundSliderThumbShape(
              enabledThumbRadius: 15.0,
            ),
            overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
            overlayColor: Colors.pink,
          ),
          child: Slider(
            value: height.toDouble(),
            activeColor: Colors.white,
            inactiveColor: klabelColor,
            onChanged: onChange,
            min: 110,
            max: 230,
            thumbColor: Colors.pink,
          ),
        )
      ],
    );
  }
}
