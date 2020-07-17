import 'package:flutter/material.dart';
import 'package:loading/indicator/ball_pulse_indicator.dart';
import 'package:loading/loading.dart';
class LoadingSimple extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Container(
         color: Colors.pinkAccent,
         child: Center(
          child: Loading(indicator: BallPulseIndicator(), size: 50.0,color: Colors.white),
        ),
      ),
      ),
    );
  }
}
