import 'package:flutter/material.dart';
import 'package:testapp/hackathon.dart';

import 'hackatonSecond.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Zenan()
    );
  }
}
