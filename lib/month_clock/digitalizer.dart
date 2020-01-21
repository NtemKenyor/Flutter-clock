//This code is under MIT licence, you can find the complete file here: LICENSE.txt
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class digitalizer extends StatelessWidget {
  var day_in_month = new DateTime.now().day;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Row(
          children: <Widget>[
            Center(
              child: Text(
                day_in_month.toString(),
                style: TextStyle(backgroundColor: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
