import 'package:flutter/material.dart';


class AddAccountScreen extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Accounts'),
      ),
      body: ListView(
        children: [
          Text(
              'Add another account so you can switch between them easily.',
              style: TextStyle(fontSize: 16.0),
            ),
          // Your existing accounts
          /*SectionHeader('Your existing accounts'),*/
          AccountListTile(
            name: 'Panji Pradana',
            email: 'panjiperdana@mail.com',
          ),
          AccountListTile(
            name: 'Sulistyo Aji',
            email: 'sistAll@mail.com',
          ),
          AccountListTile(
            name: 'Astaru Lopez',
            email: 'asper@mail.com',
          ),

          // Add another account button
          /*SectionHeader('Add another account'),*/
          AddAnotherAccountButton(),
        ],
      ),
    );
  }
}


class AccountListTile extends StatelessWidget {
  final String name;
  final String email;

  const AccountListTile({
    Key? key,
    required this.name,
    required this.email,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(name[0]),
      ),
      title: Text(name),
      subtitle: Text(email),
    );
  }
}

class AddAnotherAccountButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text('Add another +'),
    );
  }
}