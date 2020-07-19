import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(45.0),
        topLeft: Radius.circular(45.0),
      ),
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.all(20),
        child: Text('Icons will go here'),
      ),
    );
  }
}
