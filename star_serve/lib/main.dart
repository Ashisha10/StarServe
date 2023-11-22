import 'package:firebase_core/firebase_core.dart';
import 'package:star_serve/pages/past_events.dart';
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
// import 'package:star_serve/pages_o/ongoing_events.dart';
import 'package:star_serve/pages_v/ongoing_events.dart';
import 'package:star_serve/pages_v/explore_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(StarServe());
}

// void main() {
//   runApp(StarServe());
// }

class StarServe extends StatelessWidget {
  // Future<void> initializeDefault() async {
  //   FirebaseApp app = await Firebase.initializeApp(
  //     options: DefaultFirebaseOptions.currentPlatform,
  //   );
  //   print('Initialized default app $app');
  // }

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
        FeedPage.id: (context) => const FeedPage(),
        // RequestsPage.id: (context) => const RequestsPage(),
        ProfilePage.id: (context) => const ProfilePage(),
        Explore.id: (context) => const Explore(),
        OngoingEventsPage.id: (context) => const OngoingEventsPage(),
        EditProfile.id: (context) => const EditProfile(),
        PastEvents.id: (context) => const PastEvents(),
      },
    );
  }
}
