import 'package:flutter/material.dart';
import 'package:second/components/app_drawer.dart';

class FirstPage extends StatelessWidget {
  FirstPage({Key? key}) : super(key: key);

  void navigateToHome(BuildContext context) {
    Navigator.pushNamed(context, '/home'); // Replace with your home route
  }

  void navigateToLogin(BuildContext context) {
    Navigator.pushNamed(context, '/login');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onTap: () => navigateToHome(context),
          child: Text('Book Ticket'),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer(); // Open the global drawer
              },
            );
          },
        ),
      ),
      drawer: AppDrawer(), // Call the global drawer here
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'lib/images/homeImage.jpg'), // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 30),
                  Text(
                    'Book !',
                    style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Welcome to ticket solution!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () => navigateToLogin(context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 18, 0, 66),
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      textStyle: TextStyle(fontSize: 18),
                    ),
                    child: Text('It\'s your time'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
