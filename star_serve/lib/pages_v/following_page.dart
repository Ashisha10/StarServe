import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:star_serve/pages/profile_page.dart';

class FollowingPage extends StatefulWidget {
  const FollowingPage({super.key});

  static const String id = "ongoing_events_page_";

  @override
  State<FollowingPage> createState() => _FollowingPageState();
}

class _FollowingPageState extends State<FollowingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Following'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Following',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Ongoing Events',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            // Event Cards
            buildEventCard(
              context,
              'Event 1',
              'November 5, 2022',
              '2:00 PM',
              'Description of Event 1.',
            ),
            buildEventCard(
              context,
              'Event 2',
              'December 20, 2022',
              '6:30 PM',
              'Description of Event 2.',
            ),
            buildEventCard(
              context,
              'Event 3',
              'January 15, 2023',
              '3:30 PM',
              'Description of Event 3.',
            ),
          ],
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

  Widget buildEventCard(
      BuildContext context,
      String eventName,
      String eventDate,
      String eventTime,
      String eventDescription,
      ) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              eventName,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text('Date: $eventDate'),
            Text('Time: $eventTime'),
            SizedBox(height: 8.0),
            Text(
              eventDescription,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
