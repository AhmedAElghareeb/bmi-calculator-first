import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget{

  late int result;
  late int age;

  BmiResult(this.result, this.age);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Result"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Result Is : ${result}", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            Container(height: 15.0,),
            Text("Age Is : ${age}", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}