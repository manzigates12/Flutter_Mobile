import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 0, 42, 84),
            ),
            accountName: Text(
              'Manzi',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            accountEmail: null,
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text(
                'M',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.yellow,
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.pop(context); // Close drawer first
              Navigator.pushNamed(
                  context, '/welcome'); // Navigate to '/welcome'
            },
          ),
          ListTile(
            leading: Icon(Icons.login),
            title: Text('Login'),
            onTap: () {
              Navigator.pop(context); // Close drawer first
              Navigator.pushNamed(context, '/login'); // Navigate to '/login'
            },
          ),
          ListTile(
            leading: Icon(Icons.person_add),
            title: Text('Signup'),
            onTap: () {
              Navigator.pop(context); // Close drawer first
              Navigator.pushNamed(context, '/signup'); // Navigate to '/signup'
            },
          ),
          ListTile(
            leading: Icon(Icons.calculate),
            title: const Text('Calculator'),
            onTap: () {
              Navigator.pop(context); // Close drawer first
              Navigator.pushNamed(
                  context, '/calculator'); // Navigate to '/calculator'
            },
          ),
        ],
      ),
    );
  }
}
