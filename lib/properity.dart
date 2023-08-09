// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable

import 'package:bmicalculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:pressable/pressable.dart';

class Properity extends StatelessWidget {
  const Properity(
      {super.key,
      required this.label,
      this.pressAdd,
      this.pressMinus,
      this.weight});
  final label;
  final pressAdd;
  final pressMinus;
  final weight;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(
            "$label".toUpperCase(),
            style: klabelStyle,
          ),
          Text(
            '$weight',
            style: const TextStyle(fontSize: 50),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Pressable.opacity(
                onLongPressed: pressMinus,
                onPressed: pressMinus,
                child: Container(
                  decoration: BoxDecoration(
                      color: inActiveCardColor,
                      borderRadius: BorderRadius.circular(50)),
                  child: const Padding(
                    padding: EdgeInsets.all(15),
                    child: Icon(
                      Icons.remove,
                      size: 30,
                    ),
                  ),
                ),
              ),
              Pressable.opacity(
                onLongPressed: pressAdd,
                onPressed: pressAdd,
                child: Container(
                  decoration: BoxDecoration(
                      color: inActiveCardColor,
                      borderRadius: BorderRadius.circular(50)),
                  child: const Padding(
                    padding: EdgeInsets.all(15),
                    child: Icon(
                      Icons.add,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ],
          )
        ]);
  }
}
