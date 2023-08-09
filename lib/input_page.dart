// ignore_for_file: use_full_hex_values_for_flutter_colors, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables, sort_child_properties_last

import 'package:bmicalculator/properity.dart';
import 'package:bmicalculator/result_page.dart';
import 'package:bmicalculator/slider_card.dart';
import 'package:flutter/material.dart';
import 'myCard.dart';
import 'gender.dart';
import 'constants.dart';

enum GenderEnum { female, male }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  var weight = 53;
  var age = 10;
  var selectedGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: MyCard(
                  onPress: () {
                    setState(() {
                      selectedGender = GenderEnum.female;
                    });
                  },
                  colors: selectedGender == GenderEnum.female
                      ? activeColor
                      : inActiveCardColor,
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
                        selectedGender = GenderEnum.male;
                      });
                    },
                    colors: selectedGender == GenderEnum.male
                        ? activeColor
                        : inActiveCardColor,
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
              carChild: SliderCard(
                height: kheight,
                onChange: (double newValue) {
                  setState(() {
                    kheight = newValue.round();
                  });
                },
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: MyCard(
                    colors: activeColor,
                    carChild: Properity(
                      label: 'weight',
                      weight: weight.toString(),
                      pressAdd: () {
                        setState(() {
                          weight += 1;
                        });
                      },
                      pressMinus: () {
                        setState(() {
                          weight > 0 ? weight -= 1 : {};
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: MyCard(
                    colors: activeColor,
                    carChild: Properity(
                      label: "Age",
                      pressAdd: () {
                        setState(() {
                          age += 1;
                        });
                      },
                      pressMinus: () {
                        setState(() {
                          age > 0 ? age -= 1 : {};
                        });
                      },
                      weight: age,
                    ),
                  ),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResultPage()))
            },
            child: Container(
              margin: const EdgeInsets.all(10),
              width: double.infinity,
              child: Center(
                child: Text(
                  'CALCULATE',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              height: bottomConatinerheight,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: bottomColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
