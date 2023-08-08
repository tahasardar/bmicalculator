// ignore_for_file: use_full_hex_values_for_flutter_colors, prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';
import 'package:pressable/pressable.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key, required this.colors, this.carChild, this.onPress});
  final Color colors;
  final carChild;
  final onPress;
  @override
  Widget build(BuildContext context) {
    return Pressable.fill(
      onPressed: onPress,
      child: Container(
        child: carChild,
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colors,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
