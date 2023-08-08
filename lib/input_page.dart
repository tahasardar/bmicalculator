// ignore_for_file: use_full_hex_values_for_flutter_colors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'myCard.dart';
import 'gender.dart';

const bottomConatinerheight = 80.0;
const activeColor = Color(0xFF01D1E33);
const inActiveCardColor = Color(0xFF111328);
var maleCardColor = inActiveCardColor;
var femaleCardColor = inActiveCardColor;
const bottomColor = Color(0xFFEB1555);

enum GenderEnum { female, male }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  void changeCardColor({id}) {
    if (id == GenderEnum.female) {
      if (femaleCardColor == activeColor) {
        femaleCardColor = inActiveCardColor;
      } else {
        femaleCardColor = activeColor;
        maleCardColor = inActiveCardColor;
      }
    } else {
      if (maleCardColor == activeColor) {
        maleCardColor = inActiveCardColor;
      } else {
        maleCardColor = activeColor;
        femaleCardColor = inActiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: MyCard(
                  onPress: () {
                    setState(() {
                      changeCardColor(id: GenderEnum.female);
                    });
                  },
                  colors: femaleCardColor,
                  carChild: Gender(
                    name: 'Female',
                    icon: Icon(
                      Icons.female,
                      size: 100,
                    ),
                  ),
                )),
                Expanded(
                  child: MyCard(
                    onPress: () {
                      setState(() {
                        changeCardColor(id: GenderEnum.male);
                      });
                    },
                    colors: maleCardColor,
                    carChild: Gender(
                      name: 'Male',
                      icon: Icon(
                        Icons.male,
                        size: 100,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: MyCard(
              colors: activeColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: MyCard(
                    colors: activeColor,
                  ),
                ),
                Expanded(
                  child: MyCard(
                    colors: activeColor,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            width: double.infinity,
            height: bottomConatinerheight,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: bottomColor,
            ),
          ),
        ],
      ),
    );
  }
}
