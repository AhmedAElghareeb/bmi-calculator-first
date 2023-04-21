import 'package:flutter/material.dart';

import 'bmidetail.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Bmi(),
    );
  }
}