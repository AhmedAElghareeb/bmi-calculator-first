import 'dart:math';

import 'package:flutter/material.dart';

import 'bmiresult.dart';

class Bmi extends StatefulWidget{
  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {

  double height = 120.0;
  int weight = 20;
  int age = 5;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Bmi Details"),
        elevation: 1.0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0,),
                  color: Colors.grey[400],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Height", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text("${height.round()}", style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),),
                        Container(width: 5.0,),
                        Text("CM", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Slider(
                      value: height,
                      max: 250.0,
                      min: 70.0,
                      onChanged: (value)
                      {
                        setState(() {
                          height = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Weight", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),),
                          Text("${weight}", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: ()
                                {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                mini: true,
                                child: Icon(Icons.remove),
                              ),
                              Container(width: 20.0,),
                              FloatingActionButton(
                                onPressed: ()
                                {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                mini: true,
                                child: Icon(Icons.add),
                              ),
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[400],
                      ),
                    ),
                  ),
                  Container(width: 20.0,),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Age", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),),
                          Text("${age}", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: ()
                                {
                                  setState(() {
                                    age--;
                                  });
                                },
                                mini: true,
                                child: Icon(Icons.remove),
                              ),
                              Container(width: 20.0,),
                              FloatingActionButton(
                                onPressed: ()
                                {
                                  setState(() {
                                    age++;
                                  });
                                },
                                mini: true,
                                child: Icon(Icons.add),
                              ),
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[400],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.blue,
            child: MaterialButton(
              onPressed: ()
              {
                var result = weight / pow(height / 100, 2);

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BmiResult(result.round(), age)),
                );
              },
              height: 50.0,
              child: Text("CALCULATE", style: TextStyle(color: Colors.white),),
            ),
          ),
        ],
      ),
    );
  }
}