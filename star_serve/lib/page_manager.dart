import 'package:star_serve/pages/profile_page.dart';
import 'package:star_serve/components/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurrentPage extends StatefulWidget {
  const CurrentPage({Key? key}) : super(key: key);

  static const String id = "home_page";

  @override
  State<CurrentPage> createState() => _CurrentPageState();
}

class _CurrentPageState extends State<CurrentPage> {
  int _page = 0;
  late PageController pageController; // for tabs animation

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  void navigationTapped(int page) {
    //Animating Page
    pageController.jumpToPage(page);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBGColour,
        title: Text(
          "StarServe",
          style: appBranding.copyWith(fontSize: 35.0),
        ),
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: onPageChanged,
        children: homeScreenItems,
      ),
      bottomNavigationBar: CupertinoTabBar(
        backgroundColor: kBGColour,
        activeColor: kHighlightColour,
        inactiveColor: kFGColour,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: "Events",
            activeIcon: Icon(Icons.event),
            icon: Icon(Icons.event_outlined),
          ),
          BottomNavigationBarItem(
            label: "Explore",
            activeIcon: Icon(Icons.search_outlined),
            icon: Icon(Icons.search_outlined),
          ),
          BottomNavigationBarItem(
            label: "Requests",
            activeIcon: Icon(Icons.people_rounded),
            icon: Icon(Icons.people_outlined),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            activeIcon: Icon(Icons.person_2),
            icon: Icon(Icons.person_2_outlined),
          ),
        ],
        onTap: navigationTapped,
        currentIndex: _page,
      ),
    );
  }
}

// TODO : pageTransitionType Enum