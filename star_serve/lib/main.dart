import 'package:firebase_core/firebase_core.dart';
import 'package:star_serve/pages/past_events.dart';
import 'package:star_serve/pages_o/vltr_req_page.dart';
import 'firebase_options.dart';
import 'package:star_serve/pages/landing_page.dart';
import 'package:star_serve/pages/profile_page.dart';
import 'package:star_serve/pages/login_page.dart';
import 'package:star_serve/page_manager.dart';
import 'package:flutter/material.dart';
import 'package:star_serve/pages/register_page.dart';
import 'package:star_serve/pages/splash_screen.dart';
import 'package:star_serve/pages_o/ongoing_events.dart';
import 'package:star_serve/pages/edit_profile.dart';
import 'package:star_serve/pages_v/fol_org_events.dart';
import 'package:star_serve/pages_v/fol_org_events.dart';
import 'package:star_serve/pages_v/explore_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(StarServe());
}

class StarServe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      // fontFamily: "Sacramento-Regular.ttf",
      // ),
      initialRoute: LandingPage.id,
      routes: {
        LoginPage.id: (context) => const LoginPage(),
        RegisterPage.id: (context) => const RegisterPage(),
        ProfilePage.id: (context) => const ProfilePage(),
        CurrentPage.id: (context) => const CurrentPage(),
        ExplorePage.id: (context) => const ExplorePage(),
        OngoingEventsVPage.id: (context) => const OngoingEventsVPage(),
        OngoingEventsOPage.id: (context) => const OngoingEventsOPage(),
        VolunteerPage.id: (context) => const VolunteerPage(),
        EditProfile.id: (context) => const EditProfile(),
        PastEvents.id: (context) => const PastEvents(),
      },
    );
  }
}
