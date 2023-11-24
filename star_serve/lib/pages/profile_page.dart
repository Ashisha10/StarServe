import 'package:animated_background/animated_background.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:star_serve/components/rounded_button.dart';
import 'package:star_serve/components/constants.dart';
import 'package:star_serve/pages/login_page.dart';
import 'package:star_serve/pages/register_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  static const String id = "profile_page";

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with TickerProviderStateMixin {
  final _auth = FirebaseAuth.instance;
  late User loggedInUser;

  void getCurrentUser() async {
    try {
      final user = await _auth.currentUser;
      if (loggedInUser != null) {
        loggedInUser = user!;
      }
    } on Exception catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: lightYellow,
        title: Center(
          child: Text(
            'HOWDY!',
            style: appRegularText.copyWith(fontSize: 40.0),
          ),
        ),
      ),
      backgroundColor: Colors.black,
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Your Name',
                style: appBranding.copyWith(fontSize: 50.0),
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
                style: ElevatedButton.styleFrom(
                  primary: navyBlue,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle: appRegularText.copyWith(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  _auth.signOut();
                  Navigator.popUntil(
                      context, ModalRoute.withName(LoginPage.id));
                },
                child: Text(
                  'Log Out',
                  style: appRegularText.copyWith(
                    fontSize: 20.0,
                    color: deepYellow,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildFunctionalityRow(
      BuildContext context, String label, VoidCallback onPressed) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: appBranding.copyWith(fontSize: 30.0),
          ),
          IconButton(
            icon: Icon(Icons.arrow_circle_right_sharp),
            iconSize: 35,
            color: lightYellow,
            onPressed: onPressed,
          ),
        ],
      ),
    );
  }
}