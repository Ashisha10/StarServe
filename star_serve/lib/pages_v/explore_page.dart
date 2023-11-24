//needs UI and appearance fixes
//needs icons from space theme

import 'package:animated_background/animated_background.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:star_serve/components/rounded_button.dart';
import 'package:star_serve/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:star_serve/pages/login_page.dart';
import 'package:star_serve/pages/register_page.dart';

import '../components/event_card.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  static const String id = "ExplorePage_page";

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> with TickerProviderStateMixin {
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
                "Explore",
                style: appRegularText.copyWith(fontSize: 40.0),
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
        child: Container(
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
    );
  }
}


