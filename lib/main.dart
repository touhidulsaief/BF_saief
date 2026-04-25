import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  final List<String> subtitles = ["Welcome"];

  String getRandomSubtitle() {
    final random = Random();
    return subtitles[random.nextInt(subtitles.length)];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Homepage")),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Saief Islam"),
              accountEmail: null,
            ),

            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {},
            ),

            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: () {},
            ),
          ],
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello Everyone",
              style: TextStyle(
                fontSize: 24,
                color: Colors.pink,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 8),

            Text(
              getRandomSubtitle(),
              style: TextStyle(
                fontSize: 16,
                color: const Color.fromARGB(255, 232, 14, 240),
              ),
            ),

            SizedBox(height: 20),

            Row(
              children: [
                Container(
                  width: 400,
                  height: 500,
                  color: const Color.fromARGB(255, 237, 11, 226),
                ),
                SizedBox(width: 10),
                Container(
                  width: 400,
                  height: 500,
                  color: const Color.fromARGB(255, 244, 16, 39),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
