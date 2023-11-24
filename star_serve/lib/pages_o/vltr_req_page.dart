import 'package:flutter/cupertino.dart';
import 'package:animated_background/animated_background.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:star_serve/components/rounded_button.dart';
import 'package:star_serve/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:star_serve/pages/login_page.dart';
import 'package:star_serve/pages/register_page.dart';
import '../components/event_card.dart';

class VolunteerPage extends StatefulWidget {
  const VolunteerPage({super.key});

  static const String id = "volunteer_page";
  @override
  State<VolunteerPage> createState() => _VolunteerPageState();
}

class _VolunteerPageState extends State<VolunteerPage>
    with TickerProviderStateMixin {
  bool isCheckboxChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: lightYellow,
        title: Center(
          child: Text(
            'Volunteer Requests',
            style: appRegularText.copyWith(fontSize: 40.0),
          ),
        ),
      ),
      body: AnimatedBackground(
        behaviour: buildRandomParticleBehaviour(),
        vsync: this,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Volunteers',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16.0),
                // Volunteer Cards
                buildVolunteerCard(context, 'Volunteer 1'),
                buildVolunteerCard(context, 'Volunteer 2'),
                buildVolunteerCard(context, 'Volunteer 3'),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        items: [
          Icon(Icons.explore),
          Icon(Icons.access_time_outlined),
          Icon(Icons.person),
        ],
        onTap: (index) {
          // Handle navigation based on the index
          // For example, you can use a switch statement
          // to navigate to different pages.
        },
      ),
    );
  }

  Widget buildVolunteerCard(BuildContext context, String volunteerName) {
    return Card(
      color: navyBlue,
      elevation: 4.0,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text(
          volunteerName,
          style: appBranding.copyWith(fontSize: 30.0),
        ),
        trailing: Container(
          width: 24.0,
          height: 24.0,
          decoration: BoxDecoration(
            color: lightYellow,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Checkbox(
              value: isCheckboxChecked,
              onChanged: (bool? value) {
                // Handle checkbox state change
                setState(() {
                  //isCheckboxChecked = value ?? true;
                });
              },
              shape: CircleBorder(),
            ),
          ),
        ),
      ),
    );
  }
}
