import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(const BMIApp());

class BMIApp extends StatefulWidget {
  const BMIApp({super.key});
  @override
  State<BMIApp> createState() => _BMIAppState();
}

class _BMIAppState extends State<BMIApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        primaryColor: const Color(0xFF0A0E21),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0A0E21),
        ),
      ),
      home: const InputPage(),
    );
  }
}
