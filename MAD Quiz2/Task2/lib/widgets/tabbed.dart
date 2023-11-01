import 'package:flutter/material.dart';

class TabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tabs Example'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.business), text: 'Business'),
              Tab(icon: Icon(Icons.school), text: 'School'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('Home Content')),
            Center(child: Text('Business Content')),
            Center(child: Text('School Content')),
          ],
        ),
      ),
    );
  }
}