import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class scondscreen extends StatelessWidget {
  String? gender;
  int? age ;
  double? hight ;
  int? wight ;
  double? result ;
  scondscreen(this.gender, this.age, this.hight, this.wight,this.result);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('you are : $gender'),
            Text('your bmi is : ${result!.round()}'),
            Text('youR AGE : $age'),

            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('bakk'))
          ],
        ),
      ),
    );
  }
}
