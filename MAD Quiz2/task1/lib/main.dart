

import 'package:flutter/material.dart';
import 'package:task1/Page1.dart';
import 'package:task1/Page2.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
  routes: {
    '/page2': (context) =>AddAccountScreen (),
  },
  home: Page1(),
);
  }
}


