import 'package:star_serve/pages/landing_page.dart';
import 'package:star_serve/pages/profile_page.dart';
import 'package:star_serve/pages/login_page.dart';
import 'package:star_serve/page_manager.dart';
import 'package:flutter/material.dart';
// import 'package:star_serve/pages_o/ongoing_events.dart';
import 'package:star_serve/pages_v/ongoing_events.dart';

void main() async {
  runApp(StarServe());
}

class StarServe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LandingPage(),
      // theme: ThemeData(
        // fontFamily: "Sacramento-Regular.ttf",
      // ),
      initialRoute: LandingPage.id,
      routes: {
        LoginPage.id: (context) => const LoginPage(),
        FeedPage.id: (context) => const FeedPage(),
        // RequestsPage.id: (context) => const RequestsPage(),
        ProfilePage.id: (context) => const ProfilePage(),
        // ExplorePage.id: (context) => const ExplorePage(),
      },
    );
  }
}