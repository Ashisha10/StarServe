//needs UI and appearance fixes
//needs icons from space theme

import 'package:animated_background/animated_background.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:star_serve/components/rounded_button.dart';
import 'package:star_serve/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:star_serve/pages/login_page.dart';
import 'package:star_serve/pages/register_page.dart';

import '../components/event_card.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  static const String id = "explore_page";

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage>
    with TickerProviderStateMixin {
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
                "Explore Events",
                style: appRegularText.copyWith(fontSize: 25.0),
              ),
            ),
            IconButton(
              icon: Icon(Icons.location_on, size: 40, color: navyBlue),
              onPressed: () {
                // Handle location icon press
              },
            ),
            IconButton(
              icon: Icon(Icons.filter_list, size: 40, color: navyBlue),
              onPressed: () {
                // Handle filter icon press
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
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
                    showDistance: true,
                    showHeartIcon: false,
                    showLocIcon: true,
                    eventDist: '1.2km',
                    eventName: 'Event 1',
                    eventDateTime: 'November 5, 2022, 6:30 PM',
                    eventAddr: 'SAC MNNIT',
                    eventDesc: 'Details for Event 1',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CardHolder(
                    showDistance: true,
                    showHeartIcon: false,
                    showLocIcon: true,
                    eventDist: '2.2km',
                    eventName: 'Event 2',
                    eventDateTime: 'December 20, 2022, 2:00 PM',
                    eventAddr: 'MP HALL',
                    eventDesc: 'Details for Event 2',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CardHolder(
                    showDistance: true,
                    showHeartIcon: false,
                    showLocIcon: true,
                    eventDist: '500m',
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
                    eventDist: '200m',
                    eventName: 'Event 4',
                    eventDateTime: 'January 20, 2023, 4:30 PM',
                    eventAddr: 'ECED',
                    eventDesc: 'Details for Event 4',
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
      //   color: lightYellow,
      //   buttonBackgroundColor: lightYellow,
      //   backgroundColor: Colors.black,
      //   onTap: (index) {
      //     // Handle navigation based on the index
      //   },
      //   items: const [
      //     Icon(
      //       Icons.explore,
      //       // use this for explore and ongoing events respectively for org and user
      //       color: navyBlue,
      //       size: 40,
      //     ),
      //     Icon(
      //       Icons.notifications,
      //       // use this button to redirect to the volunteer requests and following respectively for org and user
      //       color: navyBlue,
      //       size: 40,
      //     ),
      //     Icon(
      //       Icons.person, // profile page
      //       color: navyBlue,
      //       size: 40,
      //     ),
      //   ],
      // ),
    );
  }
}
