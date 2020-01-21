//This code is under MIT licence, you can find the complete file here: LICENSE.txt
import 'dart:async';
import 'hand_second.dart';
import 'package:flutter/material.dart';
import 'digitalizer.dart';

class ClockHands extends StatelessWidget {
  final DateTime dateTime;
  final bool showHourHandleHeartShape;

  ClockHands({this.dateTime, this.showHourHandleHeartShape = false});

  @override
  Widget build(BuildContext context) {
    return new AspectRatio(
        aspectRatio: 1.0,
        child: new Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20.0),
            child: new Stack(fit: StackFit.expand, children: <Widget>[
              new digitalizer(),
              new CustomPaint(
                painter: new SecondHandPainter(month: dateTime.month),
              ),
            ])));
  }
}

//class _ClockHandState extends State<ClockHands> {
Timer _timer;
//
//  _ClockHandState();
//
//  @override
//  void initState() {
//    super.initState();
//    dateTime = new DateTime.now();
//    _timer = new Timer.periodic(const Duration(seconds: 1), setTime);
//  }
//
//  void setTime(Timer timer) {
//    setState(() {
//      dateTime = new DateTime.now();
//    });
//  }
//
//  @override
//  void dispose() {
//    _timer.cancel();
//    super.dispose();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//  }
//}