import 'package:star_serve/pages/profile_page.dart';
import 'package:flutter/material.dart';

import '../pages_o/ongoing_events.dart';

// const BGColour = Color(0xFF222831);
// const FGColour = Color(0xFFE8E8E8);
// const AccentColour = Color(0xFF30475E);
// const HighlightColour = Color(0xFFF05454);

const kBGColour = Color(0xFF141618);
const kFGColour = Color(0xFFE0E0E0);
const kTrimColour = Color(0xFF1A1F23);
const kAccentColour = Color(0xFF41BFA5);
const kHighlightColour = Color(0xFF359F90);

const appBranding = TextStyle(
  color: kFGColour,
  fontStyle: FontStyle.normal,
  // fontFamily: "Sacramento",
);

const appRegularText = TextStyle(
  color: kFGColour,
  fontSize: 20.0,
  // fontFamily: "SF-Pro",
);

const kInputTextStyle = TextStyle(
  color: kBGColour,
  // fontFamily: "SF-Pro",
);

const kGapFiller = SizedBox(
  width: 25.0,
  height: 25.0,
);

const kInputField = InputDecoration(
  filled: true,
  fillColor: kFGColour,
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
      color: kBGColour,
      width: 1.0,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(15.0),
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: kTrimColour,
      width: 2.5,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(15.0),
    ),
  ),
);

List<Widget> homeScreenItems = [
  const FeedPage(),
  // const ExplorePage(),
  // const RequestsPage(),
  const ProfilePage(),
];
