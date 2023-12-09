import 'package:flutter/material.dart';
import 'package:flutter_ass/widgets/profile.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Saya'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('URL_GAMBAR_PROFIL'),
            ),
            SizedBox(height: 20),
            Text(
              'Nama Pengguna',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Email@example.com',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            // Tambahkan widget-widget tambahan sesuai kebutuhan
          ],
        ),
      ),
    );
  }
}