//This code is under MIT licence, you can find the complete file here: LICENSE.txt
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class digitalizer extends StatelessWidget {
  var day_of_d_week;
  var present_weekday = new DateTime.now().weekday;
  var weekday = ["sun", "mon", "tue", "wed", "thur", "fri", "sat"];
  @override
  Widget build(BuildContext context) {
    day_of_d_week = weekday[present_weekday];
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Row(
          children: <Widget>[
            Center(
              child: Text(
                day_of_d_week,
                style: TextStyle(backgroundColor: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
