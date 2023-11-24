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

class OngoingEventsVPage extends StatefulWidget {
  const OngoingEventsVPage({super.key});

  static const String id = "ongoing_events_page_v";

  @override
  State<OngoingEventsVPage> createState() => _OngoingEventsVPageState();
}

class _OngoingEventsVPageState extends State<OngoingEventsVPage>
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
    // TODO: implement initState
    super.initState();
    getCurrentUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: lightYellow,
        title: Row(
          children: [
            Expanded(
              child: Text(
                "Ongoing Events",
                style: appRegularText.copyWith(fontSize: 35.0),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.filter_list, size: 40, color: navyBlue),
              onPressed: () {
                // Handle location icon press
              },
            ),
            IconButton(
              icon: const Icon(Icons.location_pin, size: 40, color: navyBlue),
              onPressed: () {
                // Handle location icon press
              },
            ),
          ],
        ),
      ),
      body: AnimatedBackground(
        behaviour: buildRandomParticleBehaviour(),
        vsync: this,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CardHolder(
                    eventName: 'Event 1',
                    eventDateTime: 'November 5, 2022, 6:30 PM',
                    eventAddr: 'SAC MNNIT',
                    eventDesc: 'Details for Event 1',
                  ),
                  CardHolder(
                    eventName: 'Event 2',
                    eventDateTime: 'December 20, 2022, 2:00 PM',
                    eventAddr: 'MP HALL',
                    eventDesc: 'Details for Event 2',
                  ),
                  CardHolder(
                    eventName: 'Event 3',
                    eventDateTime: 'January 15, 2023, 3:30 PM',
                    eventAddr: 'Library',
                    eventDesc: 'Details for Event 3',
                  ),
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
    );
  }
}
