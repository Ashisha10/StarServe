//needs UI and appearance fixes
//needs icons from space theme

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

class OngoingEventsOPage extends StatefulWidget {
  const OngoingEventsOPage({super.key});

  static const String id = "ongoing_events_page_o";

  @override
  State<OngoingEventsOPage> createState() => _OngoingEventsOPageState();
}

class _OngoingEventsOPageState extends State<OngoingEventsOPage>
    with TickerProviderStateMixin {

  final _auth = FirebaseAuth.instance;
  User? loggedInUser;

  void getCurrentUser() async {
    try {
      // Use the FirebaseAuth instance to get the current user
      final user = await _auth.currentUser;

      // Check if the user is not null before assigning to loggedInUser
      if (loggedInUser != null) {
        loggedInUser = user!;
      }
    } on Exception catch (e) {
      // Handle exceptions that may occur during user retrieval
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
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: lightYellow,
        title: Row(
          children: [
            Expanded(
              child: Text(
                "Manage Events",
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
                  // Sample Event Cards, replace with dynamic data
                  CardHolder(
                    showHeartIcon: false,
                    showLocIcon: true,
                    showDistance: true,
                    eventDist: '300m',
                    eventName: 'Event 1',
                    eventDateTime: 'November 5, 2022, 6:30 PM',
                    eventAddr: 'SAC MNNIT',
                    eventDesc: 'Details for Event 1',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CardHolder(
                    showHeartIcon: false,
                    showLocIcon: true,
                    showDistance: true,
                    eventDist: '2.1km',
                    eventName: 'Event 2',
                    eventDateTime: 'December 20, 2022, 2:00 PM',
                    eventAddr: 'MP HALL',
                    eventDesc: 'Details for Event 2',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CardHolder(
                    showHeartIcon: false,
                    showLocIcon: true,
                    showDistance: true,
                    eventDist: '1.2km',
                    eventName: 'Event 3',
                    eventDateTime: 'January 15, 2023, 3:30 PM',
                    eventAddr: 'Library',
                    eventDesc: 'Details for Event 3',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CardHolder(
                    showHeartIcon: false,
                    showLocIcon: true,
                    showDistance: true,
                    eventDist: '900m',
                    eventName: 'Event 4',
                    eventDateTime: 'January 20, 2023, 4:30 PM',
                    eventAddr: 'ECED',
                    eventDesc: 'Details for Event 4',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CardHolder(
                    showHeartIcon: false,
                    showLocIcon: true,
                    showDistance: true,
                    eventDist: '2.2km',
                    eventName: 'Event 5',
                    eventDateTime: 'January 25, 2023, 5:30 PM',
                    eventAddr: 'CSED',
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
      // bottomNavigationBar: CurvedNavigationBar(
      //   key: _bottomNavigationKey,
      //   color: lightYellow,
      //   buttonBackgroundColor: lightYellow,
      //   backgroundColor: Colors.black,
      //   onTap: (index) {
      //     setState(() {
      //       _page = index;
      //       // CurvedNavigationBarState? navBarState =
      //       //     _bottomNavigationKey.currentState;
      //     });
      //   },
      //   letIndexChange: (index) => true,
      //   items: const [
      //     Icon(
      //       Icons.explore,
      //       color: navyBlue,
      //       size: 40,
      //     ),
      //     Icon(
      //       Icons.access_time_outlined,
      //       color: navyBlue,
      //       size: 40,
      //     ),
      //     Icon(
      //       Icons.person,
      //       color: navyBlue,
      //       size: 40,
      //     ),
      //   ],
      // ),
    );
  }
}
