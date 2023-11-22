import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  static const String id = "profile_page";

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOWDY STAR'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Your Name',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            // Options: Edit Profile, Change Password, Past Activity
            buildFunctionalityRow(
              context,
              'Edit Profile',
                  () {
                // Add functionality for Edit Profile
              },
            ),
            buildFunctionalityRow(
              context,
              'Change Password',
                  () {
                // Add functionality for Change Password
              },
            ),
            buildFunctionalityRow(
              context,
              'Past Activity',
                  () {
                // Add functionality for Past Activity
              },
            ),
            SizedBox(height: 32.0),
            // Log Out button
            ElevatedButton(
              onPressed: () {
                // Add functionality for Log Out
              },
              child: Text('Log Out'),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildFunctionalityRow(BuildContext context, String label, VoidCallback onPressed) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: onPressed,
          ),
        ],
      ),
    );
  }
  }