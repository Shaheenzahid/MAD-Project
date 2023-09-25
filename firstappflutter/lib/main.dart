import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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


// home.dart
class Home extends StatefulWidget {
 @override
  _HomeState createState() => _HomeState();
}



class _HomeState extends State<Home> {
 @override
 Widget build(BuildContext context) {
 return Scaffold(
 appBar: AppBar(
 title: Text('Home'),
 actions: <Widget>[
 IconButton(
 icon: Icon(Icons.search),
 onPressed: () {},

 ),
 
 IconButton(
 icon: Icon(Icons.more_vert),
 onPressed: () {},
 ),
],
flexibleSpace: SafeArea(
 child: Icon(
 Icons.photo_camera,
 size: 75.0,
 color: Colors.white70,
 ),
),
bottom: PreferredSize(
 child: Container(
 color: Colors.lightGreen.shade100,
 height: 75.0,
 width: double.infinity,
 child: Center(
 child: Text('Bottom'),
 ),
 ),
 preferredSize: Size.fromHeight(75.0),
),

 ),
 
 body: Padding(
  padding: EdgeInsets.all(16.0),
 child: SafeArea(
 child: SingleChildScrollView(
 child: Column(
 children: <Widget>[
  const ContainerWithBoxDecorationWidget(),
 ],
 ),
 ),
 ),
 ),
 );
 }
 }
class ContainerWithBoxDecorationWidget extends StatelessWidget {
 const ContainerWithBoxDecorationWidget({
 Key? key,
 }) : super(key: key);
 @override
 Widget build(BuildContext context) {
 return Column(
 children: <Widget>[
 Container(
 height: 100.0,
 decoration: BoxDecoration(
 borderRadius: BorderRadius.only(
 bottomLeft: Radius.circular(100.0),
 bottomRight: Radius.circular(10.0),
 ),
 gradient: LinearGradient(
 begin: Alignment.topCenter,
 end: Alignment.bottomCenter,
 colors: [
 Colors.white,
 Colors.lightGreen.shade500,
 ],
 ),
 boxShadow: [
 BoxShadow(
 color: Colors.grey,
 blurRadius: 10.0,
 offset: Offset(0.0, 10.0),
 ),
 ],
 ),
 child: Center(

 child: Text('Container'), ),
 ),
 ],
 );
 }
}
