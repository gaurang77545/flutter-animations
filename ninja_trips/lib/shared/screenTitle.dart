import 'package:flutter/material.dart';

class ScreenTitle extends StatelessWidget {
  final String text;

  const ScreenTitle({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      child: Text(//1
        text,
        style: TextStyle(fontSize: 36, color: Colors.white, fontWeight: FontWeight.bold),
      ),
      tween: Tween<double>(begin: 0, end: 1),//It gives us values b/w 0 and 1 over a duration of 500 milliseconds
      duration: Duration(milliseconds: 500),//All animation stuff requires duration
      builder: (BuildContext context, double _val, Widget child) {//The child here is the child which we have labelled as 1 .It automatically looks for it and searched for it and links it up
      //Here _val takes it values from Tween and its value continuosly changes coz Tween value continuosly changes
        return Opacity(//The animation here is gonna be a fade in coz opacity is increasing from 0 to 1 also the text comes from the top coz the padding is also increased from the top
          opacity: _val,
          child: Padding(padding: EdgeInsets.only(top: _val * 20), child: child),
        );
      },
    );
  }
}
