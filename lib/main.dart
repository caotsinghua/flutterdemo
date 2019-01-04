import 'package:flutter/material.dart';
import 'randomWords.dart';
import 'twoBoxCheck.dart';
import 'counter.dart';
import 'navigator.dart';
import 'package:flutter/rendering.dart';

void main() {
  debugPaintSizeEnabled = true;
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'hellowold',
      // home: new RandomWords(),
      // home: new BoxWrap(),
      home: PageA(),
      theme: new ThemeData(primaryColor: Colors.white),
    );
  }
}
