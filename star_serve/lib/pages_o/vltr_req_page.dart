import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class VolunteerPage extends StatefulWidget {
  const VolunteerPage({super.key});

  static const String id = "volunteer_page";
  @override
  State<VolunteerPage> createState() => _VolunteerPageState();
}

class _VolunteerPageState extends State<VolunteerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Volunteer Requests'),
      ),
      body: Padding(
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
      elevation: 4.0,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text(volunteerName),
        trailing: Container(
          width: 24.0,
          height: 24.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Checkbox(
              value: false, // You can set the initial value as needed
              onChanged: (bool? value) {
                // Handle checkbox state change
              },
              shape: CircleBorder(),
            ),
          ),
        ),
      ),
    );
  }
}
