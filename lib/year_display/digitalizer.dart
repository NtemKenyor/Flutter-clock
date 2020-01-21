//This code is under MIT licence, you can find the complete file here: LICENSE.txt
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class digitalizer extends StatelessWidget {
  var currentYear = new DateTime.now().year.toString();

  String presentmonth;
  final months = [
    "jan",
    "feb",
    "march",
    "april",
    "may",
    "june",
    "july",
    "aug",
    "sept",
    "oct",
    "'nov",
    "dec"
  ];
  var currentTime_month = new DateTime.now().month;

  @override
  Widget build(BuildContext context) {
    presentmonth = months[currentTime_month - 1];
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                presentmonth,
                style: TextStyle(color: Colors.white, fontFamily: "script"),
              ),
            ),
            Center(
              child: Text(
                currentYear,
                style: TextStyle(
                    color: Colors.white, fontSize: 23, fontFamily: "script"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
