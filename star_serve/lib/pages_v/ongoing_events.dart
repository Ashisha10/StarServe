import 'package:star_serve/components/constants.dart';
import 'package:star_serve/components/event_card.dart';
import 'package:flutter/material.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  static const String id = "feed_page_v";

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAccentColour,
      body: Column(
        children: [
          kGapFiller,
          kGapFiller,
        ],
      ),
    );
  }
}
