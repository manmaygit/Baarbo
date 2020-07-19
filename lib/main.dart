import 'package:flutter/material.dart';
import 'logout_page.dart';
import 'salon_page.dart';

void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: SalonPage(),
    );
  }
}



