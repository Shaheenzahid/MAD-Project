import 'package:flutter/material.dart';
import 'package:mid/add_friend_screen.dart';



class FriendsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Friends',
      home: FriendsPage(),
    );
  }
}

class FriendsPage extends StatelessWidget {
  final List<Map<String, dynamic>> friends = [
    {
      'username': 'JohnDoe',
      'Email': 'asfghh12@gmail.com',
      'image': 'assets/images/midddddd.jpeg',
    },
    {
      'username': 'JaneSmith',
      'Email': 'asfghh12@gmail.com',
      'image': 'assets/images/11.jpeg',
    },
     {
      'username': 'JaneSmith',
      'Email': 'asfghh12@gmail.com',
      'image': 'https://example.com/janesmith.jpg',
    },
     {
      'username': 'JaneSmith',
      'Email': 'asfghh12@gmail.com',
      'image': 'https://example.com/janesmith.jpg',
    },
     {
      'username': 'JaneSmith',
      'Email': 'asfghh12@gmail.com',
      'image': 'https://example.com/janesmith.jpg',
    },
     {
      'username': 'JaneSmith',
      'Email': 'asfghh12@gmail.com',
      'image': 'https://example.com/janesmith.jpg',
    },
    // Add more friends here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Friends'),
      ),
      body: ListView.builder(
        itemCount: friends.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(friends[index]['image']),
            ),
            title: Text(friends[index]['username']),
            subtitle: Text('Email: ${friends[index]['Email']}'),
            onTap: () {
               // Navigate to the profile page when friend is tapped
   Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileScreen()),
            );
            },
          );
        },
      ),
    );
  }
}