import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:star_serve/pages/edit_profile.dart';
import 'package:star_serve/pages/login_page.dart';
import 'package:star_serve/pages/past_events.dart';

import '../pages_v/following_page.dart';

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
                    Navigator.pushNamed(
                      context, EditProfile.id);
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
                    Navigator.pushNamed(
                        context, PastEvents.id);
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
      bottomNavigationBar: CurvedNavigationBar(
        index: 2,
        items: [
          Icon(Icons.explore),
          Icon(Icons.access_time_outlined),
          Icon(Icons.person),
        ],
        onTap: (index) {
          // Handle navigation based on the index
          // For example, you can use a switch statement
          // to navigate to different pages.
          setState(() {
            switch(index) {
              case 0:
                break;
              case 1:
                Navigator.pushNamed(context, FollowingPage.id);
              case 2:
                Navigator.popUntil(context, ModalRoute.withName(LoginPage.id));
                Navigator.pushNamed(context, ProfilePage.id);
            }
          });
        },
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