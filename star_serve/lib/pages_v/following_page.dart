import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:star_serve/pages/profile_page.dart';

import '../components/event_card.dart';

class FollowingPage extends StatefulWidget {
  const FollowingPage({super.key});

  static const String id = "following_page";

  @override
  State<FollowingPage> createState() => _FollowingPageState();
}

class _FollowingPageState extends State<FollowingPage> {
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
      appBar: AppBar(
        title: Text('Following'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
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
          // switch(index) {
          //   case 0:
          //     break;
          //   case 1:
          //     Navigator.pushNamed(context, FollowingPage.id);
          //   case 2:
          //     Navigator.pushNamed(context, ProfilePage.id);
          // }
        },
      ),
    );
  }

  // Widget buildEventCard(
  //   BuildContext context,
  //   String eventName,
  //   String eventDate,
  //   String eventTime,
  //   String eventDescription,
  // ) {
  //   return Card(
  //     elevation: 4.0,
  //     margin: EdgeInsets.symmetric(vertical: 8.0),
  //     child: Padding(
  //       padding: const EdgeInsets.all(16.0),
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           Text(
  //             eventName,
  //             style: TextStyle(
  //               fontSize: 18.0,
  //               fontWeight: FontWeight.bold,
  //             ),
  //           ),
  //           SizedBox(height: 8.0),
  //           Text('Date: $eventDate'),
  //           Text('Time: $eventTime'),
  //           SizedBox(height: 8.0),
  //           Text(
  //             eventDescription,
  //             maxLines: 2,
  //             overflow: TextOverflow.ellipsis,
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
