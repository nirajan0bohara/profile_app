import 'package:flutter/material.dart';

void main() {
  runApp(const ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Profile App',
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Profile'),
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('asset/nirajan.jpg'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Nirajan Bohara',
              style: TextStyle(fontSize: 24),
            ),
            Text('Flutter Developer'),
            SizedBox(
              height: 20,
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 25),
              child: ListTile(
                leading: Icon(Icons.email),
                title: Text('nirajanbohara430@gmail.com'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
