import 'package:flutter/material.dart';
import 'package:psyogram/const/myDrawer.dart';
import 'package:psyogram/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(), //başlangıç ekranı.
    );
  }
}
