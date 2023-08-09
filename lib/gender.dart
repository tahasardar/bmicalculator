// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:bmicalculator/constants.dart';
import 'package:flutter/material.dart';

class Gender extends StatelessWidget {
  const Gender({super.key, this.name, this.icon});
  final icon;
  final name;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        icon,
        SizedBox(
          height: 10,
        ),
        Text(
          '$name'.toUpperCase(),
          style: klabelStyle,
        )
      ],
    );
  }
}
