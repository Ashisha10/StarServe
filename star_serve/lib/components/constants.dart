import 'package:animated_background/animated_background.dart';
import 'package:animated_background/particles.dart';
import 'package:flutter/cupertino.dart';
import 'package:star_serve/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:star_serve/pages_o/vltr_req_page.dart';
import 'package:star_serve/pages_v/explore_page.dart';
import 'package:star_serve/pages_v/fol_org_events.dart';

import '../pages_o/ongoing_events.dart';

// const BGColour = Color(0xFF222831);
// const FGColour = Color(0xFFE8E8E8);
// const AccentColour = Color(0xFF30475E);
// const HighlightColour = Color(0xFFF05454);

const kBGColour = Color(0xFF141618);
const kFGColour = Color(0xFF2263AB);
const kTrimColour = Color(0xFF1A1F23);
const kAccentColour = Color(0xFF41BFA5);
const kHighlightColour = Color(0xFF359F90);
const kDialogBGColor = Colors.transparent;

// const kBGColour = Color(0x0C356A);
// const kFGColour = Color(0xFFE0E0E0);
// const kTrimColour = Color(0x0174BE);
// const kAccentColour = Color(0xFFC436);
// const kHighlightColour = Color(0xFFF0CE);

const navyBlue = Color(0xFF2263AB);
const cream = Color(0xFF7A6E8C);
const lightBlue = Color(0x772263AB);
const deepYellow = Color(0xEAFFF594);
const lightYellow = Color(0xEAFFF594);

const appBranding = TextStyle(
  color: lightYellow,
  fontStyle: FontStyle.normal,
  // fontFamily: "Sacramento",
);

const appRegularText = TextStyle(
  color: kFGColour,
  fontSize: 20.0,
  // fontFamily: "SF-Pro",
);

const kInputTextStyle = TextStyle(
  color: kFGColour,
  // fontFamily: "SF-Pro",
);

const kGapFiller = SizedBox(
  width: 25.0,
  height: 25.0,
);

const kInputField = InputDecoration(
  filled: true,
  fillColor: deepYellow,
  contentPadding: EdgeInsets.symmetric(
    vertical: 10.0,
    horizontal: 20.0,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(15.0),
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: kAccentColour,
      width: 1.0,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(15.0),
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: deepYellow,
      width: 2.5,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(15.0),
    ),
  ),
);

List<Widget> homeScreenItems = [
  // const FeedPage(),
  // const ExplorePage(),
  // const RequestsPage(),
  const ProfilePage(),
];

RandomParticleBehaviour buildRandomParticleBehaviour() {
  return RandomParticleBehaviour(
    options: const ParticleOptions(
      baseColor: Colors.white,
      spawnOpacity: 1,
      opacityChangeRate: 0.5,
      minOpacity: 0,
      maxOpacity: 1,
      spawnMinSpeed: 20.0,
      spawnMaxSpeed: 30.0,
      spawnMinRadius: 1.0,
      spawnMaxRadius: 2,
      particleCount: 90,
    ),
  );
}

loaderAnimation(BuildContext context) {
  return showDialog<void>(
    context: context,
    barrierColor: kDialogBGColor,
    builder: (BuildContext context) {
      return Dialog(
        elevation: 0,
        backgroundColor: kDialogBGColor,
        child: Stack(
          children: [
            Container(
              color: Colors.black
                  .withOpacity(1), // Adjust the color and opacity as needed
            ),
            Center(
              child: Container(
                width: ((MediaQuery.of(context).size.width) / 2.0),
                child: Image.asset(
                  'assets/images/orbitloader.gif',
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}

List<Widget> bottomNavBarItems_O = [
  const OngoingEventsOPage(),
  const VolunteerPage(),
  const ProfilePage(),
];

List<Widget> bottomNavBarItems_V = [
  const ExplorePage(),
  const OngoingEventsVPage(),
  const ProfilePage(),
];
