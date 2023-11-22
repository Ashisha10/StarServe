//needs UI and appearance fixes
//needs icons from space theme

import 'package:animated_background/animated_background.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:star_serve/components/rounded_button.dart';
import 'package:star_serve/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:star_serve/pages/login_page.dart';
import 'package:star_serve/pages/register_page.dart';

class OngoingEventsPage extends StatefulWidget {
  const OngoingEventsPage({super.key});

  static const String id = "ongoing_events_page_o";

  @override
  State<OngoingEventsPage> createState() => _OngoingEventsPageState();
}

class _OngoingEventsPageState extends State<OngoingEventsPage>  with TickerProviderStateMixin {

  final _auth = FirebaseAuth.instance;
  late User loggedInUser;

  void getCurrentUser() async {
    try {
      final user = await _auth.currentUser;
      if(loggedInUser != null){
        loggedInUser = user!;
      }
    } on Exception catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: lightYellow,
        title: Row(
          children: [
            Expanded(
              child: Text(
                "Ongoing Events",
                style: appRegularText.copyWith(fontSize: 40.0),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.filter_list, size: 40, color: navyBlue),
              onPressed: () {
                // Handle location icon press
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
      body: AnimatedBackground(
        behaviour: buildRandomParticleBehaviour(),
        vsync: this,
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CardHolder(subheading: 'Event 1', smallText: 'Details for Event 1'),
                  CardHolder(subheading: 'Event 2', smallText: 'Details for Event 2'),
                  // Add more CardHolder widgets as needed
                ],
              ),
              // floatingActionButton: FloatingActionButton(
              //   onPressed: () {
              //     // Handle button press
              //   },
              //   child: Icon(Icons.add),
              // ),
            ),
          ),
        ),
      ),
    );
  }
}

class CardHolder extends StatelessWidget {
  final String subheading;
  final String smallText;

  CardHolder({required this.subheading, required this.smallText});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: navyBlue,
      margin: EdgeInsets.all(5.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  subheading,
                  style: appBranding.copyWith(fontSize: 30.0),
                ),
                Text(
                  smallText,
                  style: appBranding.copyWith(fontSize: 15.0),
                ),
              ],
            ),
            Spacer(), // Adds space between text and button
            IconButton(
              iconSize: 50,
              color: lightYellow,
              icon: const Icon(Icons.more),
              onPressed: () {
                // ...
              },
            ),
          ],
        ),
      ),
    );
  }
}
