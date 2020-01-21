//This code is under MIT licence, you can find the complete file here: LICENSE.txt
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:analogue_golden/clock/clock.dart';
import 'package:flutter/services.dart';
import 'package:analogue_golden/month_clock/clock.dart';
import 'package:analogue_golden/year_display/clock.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeRight, DeviceOrientation.landscapeLeft]);
    return MaterialApp(
      title: 'Flutter Clock',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var hourly_background = new DateTime.now().hour;
  var minute_background = new DateTime.now().minute;
  String background_img = "assets/day2.gif";

  @override
  Widget build(BuildContext context) {
    if (hourly_background >= 0 && hourly_background <= 6) {
      background_img = "assets/night2.gif";
    } else if (hourly_background > 6 && hourly_background <= 18) {
      background_img = "assets/day1.gif";
    } else {
      background_img = "assets/night1.gif";
    }
    return Scaffold(
      body:  Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(background_img), fit: BoxFit.cover),
        ),
        child: Align(
          alignment: Alignment.center,
          child: AspectRatio(
          aspectRatio: 5/3,
            child: Container(
              //To avoid the fullscreen background we can place our decoration in this container
              child: Center(
                // Center is a layout widget. It takes a single child and positions it
                // in the middle of the parent.
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: new Clock(),
                      ),
                    ),
                    Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: new month_Clock(),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: new Clock_year(),
                              ),
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
