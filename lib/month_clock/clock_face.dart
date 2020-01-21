//This code is under MIT licence, you can find the complete file here: LICENSE.txt

import 'clock_text.dart';
import 'package:flutter/material.dart';


class ClockFace extends StatelessWidget{

  final DateTime dateTime;
  final ClockText clockText;
 // final bool showHourHandleHeartShape;

  ClockFace({this.clockText = ClockText.arabic, this.dateTime});

  @override
  Widget build(BuildContext context) {

    return Center(
      child: new Padding(
      padding: const EdgeInsets.all(10.0),

      child: new AspectRatio(
        aspectRatio: 0.75,
        child: new Container(
          width: double.infinity,
          decoration: new BoxDecoration(
            shape: BoxShape.circle,
              color: Colors.black,
            boxShadow: [
              BoxShadow(
                offset: Offset(8.0, 0),
                blurRadius: 13,
                spreadRadius: 1,
                color: Colors.black38
              )

            ]

          ),

        ),
      ),
      ),
    );
  }
}


