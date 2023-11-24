import 'package:star_serve/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:animated_background/animated_background.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:star_serve/components/constants.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);
  static const String id = "edit_profile_page";

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile>
    with TickerProviderStateMixin {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _aboutMeController = TextEditingController();

  bool isEditing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: lightYellow,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Current Username',
              style: appRegularText.copyWith(fontSize: 30.0),
            ),
            IconButton(
              icon: const Icon(
                Icons.edit,
                color: navyBlue,
                size: 30,
              ),
              onPressed: () {
                setState(() {
                  isEditing = true;
                  // Load existing data into text fields
                  _nameController.text =
                  "Existing Name"; // Replace with actual data
                  _aboutMeController.text =
                  "Existing About Me"; // Replace with actual data
                });
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: lightYellow,
        buttonBackgroundColor: lightYellow,
        backgroundColor: Colors.black,
        onTap: (index) {
          // Handle navigation based on the index
        },
        items: const [
          Icon(
            Icons.explore,
            color: navyBlue,
            size: 40,
          ),
          Icon(
            Icons.access_time_outlined,
            color: navyBlue,
            size: 40,
          ),
          Icon(
            Icons.person,
            color: navyBlue,
            size: 40,
          ),
        ],
      ),
      body: AnimatedBackground(
        behaviour: buildRandomParticleBehaviour(),
        vsync: this,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Update Account Information',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color:lightYellow, // Set your color here
                ),
              ),
              const SizedBox(height: 8.0),
              // Name Box
              TextField(
                enabled: isEditing,
                controller: _nameController,
                style: TextStyle(
                  color: lightYellow,
                  fontSize: 20.0,
                ),
                onTap: () {
                  if (isEditing) {
                    // Clear hint text when editing
                    _nameController
                      ..text = ''
                      ..selection =
                      TextSelection.fromPosition(TextPosition(offset: 0));
                  }
                },
                decoration: InputDecoration(
                  labelText: 'Name',
                  hintText: 'Enter your name',
                  labelStyle: TextStyle(color: lightYellow, fontSize: 25),
                  hintStyle: TextStyle(color: lightYellow),
                ),
              ),
              const SizedBox(height: 16.0),
              // About Me Box
              TextField(
                enabled: isEditing,
                controller: _aboutMeController,
                style: TextStyle(
                  color: lightYellow,
                  fontSize: 20.0,
                ),
                maxLines: 3,
                onTap: () {
                  if (isEditing) {
                    // Clear hint text when editing
                    _aboutMeController
                      ..text = ''
                      ..selection =
                      TextSelection.fromPosition(TextPosition(offset: 0));
                  }
                },
                decoration: InputDecoration(
                  labelText: 'About Me',
                  hintText: 'Tell us about yourself',
                  labelStyle: TextStyle(color: lightYellow, fontSize: 25),
                  hintStyle: TextStyle(color: lightYellow),
                ),
              ),
              const SizedBox(height: 32.0),
              // Save Changes Button
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: navyBlue,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 20),
                    textStyle: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    // Handle save changes button press
                    setState(() {
                      isEditing = false;
                      _nameController.selection = TextSelection.fromPosition(
                          TextPosition(offset: _nameController.text.length));
                      _aboutMeController.selection = TextSelection.fromPosition(
                          TextPosition(offset: _aboutMeController.text.length));
                    });
                  },
                  child: Text(
                    'Save Changes',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: lightYellow,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}