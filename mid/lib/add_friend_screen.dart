import 'package:flutter/material.dart';

void main() => runApp(ProfileScreen());

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
        ),
        body: ProfileBody(),
      ),
    );
  }
}

class ProfileBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16.0),
            child: CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('assets/images/midddddd.jpeg'),
            ),
          ),
          Text(
            'User Name',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text('Followers: 1000'),
          TextButton(
            onPressed: () {
              // Implement hire me functionality here
            },
            child: Text('Hire Me'),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Description: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed et eleifend urna. Integer ut tortor vestibulum, commodo purus vitae, congue sapien.',
              textAlign: TextAlign.center,
            ),
          ),
          
          //ProfileSection(title: 'Portfolio', content: 'Sample projects and work samples'),
          //ProfileSection(title: 'Articles', content: 'Published articles and blogs'),
          //ProfileSection(title: 'Skills', content: 'Flutter, Dart, UI/UX Design'),
           // Horizontal ListView to display sections
          Container(
            height: 200, // Set the desired height for your horizontal sections
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                ProfileSection(title: 'Portfolio', content: 'Sample projects and work samples'),
                ProfileSection(title: 'Articles', content: 'Published articles and blogs'),
                ProfileSection(title: 'Skills', content: 'Flutter, Dart, UI/UX Design'),
                // Add more ProfileSection widgets here as needed
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileSection extends StatelessWidget {
  final String title;
  final String content;

  ProfileSection({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0),
          Text(content),
        ],
      ),
    );
  }
}
