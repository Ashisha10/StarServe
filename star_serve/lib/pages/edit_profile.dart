import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:star_serve/pages/profile_page.dart';

import '../pages_v/following_page.dart';
import 'login_page.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);
  static const String id = "edit_profile";
  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Current Username'),
            IconButton(
              icon: Icon(Icons.edit),
              onPressed: () {
                // Handle edit button press
              },
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
              'Update Account Information',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            // Name Box
            TextField(
              decoration: InputDecoration(
                labelText: 'Name',
                hintText: 'Enter your name',
              ),
            ),
            SizedBox(height: 16.0),
            // About Me Box
            TextField(
              maxLines: 3,
              decoration: InputDecoration(
                labelText: 'About Me',
                hintText: 'Tell us about yourself',
              ),
            ),
            SizedBox(height: 32.0),
            // Save Changes Button
            ElevatedButton(
              onPressed: () {
                // Handle save changes button press
              },
              child: Text('Save Changes'),
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
}
