import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
 // This widget is the root of your application.
 @override
 Widget build(BuildContext context) {
 return MaterialApp(
 debugShowCheckedModeBanner: false,
 title: 'Starter Template',
 theme: ThemeData(
 primarySwatch: Colors.lightGreen,
 ),
 home: Home(),
 );
 }
}
class Home extends StatefulWidget {
 @override
 _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
 @override
 Widget build(BuildContext context) {
 return Scaffold(
  appBar: AppBar(
    leading: IconButton(
 icon: Icon(Icons.menu),
 onPressed: () { },
),
  )
 );

 }
}