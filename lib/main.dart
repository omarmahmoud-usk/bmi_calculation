import 'package:flutter/material.dart';

import 'BMI Calculator.dart';
import 'bmi_result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BMI_Calculator(),
    );
  }
}

