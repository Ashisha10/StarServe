import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class PastEvents extends StatefulWidget {
  const PastEvents({super.key});

  static const String id = "past_events";

  @override
  State<PastEvents> createState() => _PastEventsState();
}

class _PastEventsState extends State<PastEvents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Past Events'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Past Events',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            // Event Cards
            buildEventCard(
              context,
              'Event 1',
              'November 1, 2023',
              '3:00 PM',
            ),
            buildEventCard(
              context,
              'Event 2',
              'December 1, 2023',
              '7:30 PM',
            ),
            buildEventCard(
              context,
              'Event 3',
              'January 1, 2024',
              '2:00 PM',
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
        },
      ),
    );
  }

  Widget buildEventCard(BuildContext context, String eventName, String eventDate, String eventTime) {
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
          ],
        ),
      ),
    );
  }
}

