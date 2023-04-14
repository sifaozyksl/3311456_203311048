import 'package:flutter/material.dart';
import 'colors.dart';

class ArkaPlan extends StatefulWidget {
  @override
  _ArkaPlanState createState() => _ArkaPlanState();
}

class _ArkaPlanState extends State<ArkaPlan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [arkaplan_1, arkaplan_2]),
          ),
        ),
      ),
    );
  }
}
