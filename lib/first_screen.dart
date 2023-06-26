import 'dart:math';

import 'package:bmi_calcolator_project/scond_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class firstscreen extends StatefulWidget {
  const firstscreen({Key? key}) : super(key: key);

  @override
  State<firstscreen> createState() => _firstscreenState();
}

class _firstscreenState extends State<firstscreen> {
  double _value = 120;
  bool ismale = true;
  String? gender='male' ;

  int wight = 40;

  int age = 20;
 double res=0.0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMICALCOLATER'),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      child: Container(
                        color: ismale ? Colors.blue : Colors.grey[400],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              height: 90,
                              width: 90,
                              image: AssetImage('assest/image/male.png'),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'MAIE',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          ismale = true;
                          gender='male';
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          ismale = false;
                          gender ='fmale' ;
                        });
                      },
                      child: Container(
                        color: ismale ? Colors.grey : Colors.blue,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              height: 90,
                              width: 90,
                              image: AssetImage('assest/image/fmale3 (1).png'),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'FEMALE',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                color: Colors.grey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'hight',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${_value.toInt()}',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                        Text(
                          'CM',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Slider(
                      min: 80,
                      max: 220.0,
                      value: _value,
                      activeColor: Colors.white,
                      inactiveColor: Colors.white10,
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.grey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WHITE',
                            style: TextStyle(fontSize: 30),
                          ),
                          Text(
                            '$wight',
                            style: TextStyle(fontSize: 30),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(

                                onPressed: () {
                                  setState(() {
                                    wight += 1;
                                  });
                                },
                                mini: true,
                                child: Icon(Icons.add),
                                heroTag: "btn2",

                              ),
                              SizedBox(width: 5),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    wight -= 1;
                                  });
                                },
                                mini: true,
                                child: Icon(Icons.remove),
                                heroTag: "btn1",

                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.grey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: TextStyle(fontSize: 30),
                          ),
                          Text(
                            '$age',
                            style: TextStyle(fontSize: 30),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age += 1;
                                  });
                                },
                                mini: true,
                                child: Icon(Icons.add),
                                heroTag: "btn7",

                              ),
                              SizedBox(width: 5),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age -= 1;
                                  });
                                },
                                mini: true,
                                child: Icon(Icons.remove),
                                heroTag: "btn5",

                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ElevatedButton(

            onPressed: () {
       res=  wight / pow(_value/100, 2);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return scondscreen(gender,age,_value,wight,res);
                  },
                ),
              );
            },
            child: Center(child: Text('CALCOLATE')),

          )
        ],
      ),
    );
  }
}
