import 'package:animated_background/animated_background.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:star_serve/pages/profile_page.dart';
import 'package:star_serve/components/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurrentPage extends StatefulWidget {
  const CurrentPage({Key? key}) : super(key: key);

  static const String id = "page_manager";

  @override
  State<CurrentPage> createState() => _CurrentPageState();
}

class _CurrentPageState extends State<CurrentPage>
    with TickerProviderStateMixin {
  String? accTyp = "v";
  int _page = 0;
  PageController? pageController; // for tabs animation

  final _auth = FirebaseAuth.instance;
  final _dbms = FirebaseFirestore.instance;
  User? loggedInUser;

  void getCurrentUser() async {
    try {
      final user = await _auth.currentUser;
      if (loggedInUser != null) {
        loggedInUser = user!;
      }
    } on Exception catch (e) {
      print(e);
    }
  }

  void getAccType() async {
    // getCurrentUser();
    final snap = await _dbms
        .collection("users")
        .where("email", isEqualTo: loggedInUser?.email)
        .get();
    accTyp = snap.docs.single.get("acctyp");
    print(accTyp);
  }

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController?.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  void navigationTapped(int page) {
    //Animating Page
    pageController?.jumpToPage(page);
  }

  @override
  Widget build(BuildContext context) {
    getAccType();
    return Scaffold(
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   backgroundColor: lightYellow,
      //   title: Row(
      //     children: [
      //       Expanded(
      //         child: Text(
      //           "Manage Events",
      //           style: appRegularText.copyWith(fontSize: 40.0),
      //         ),
      //       ),
      //       IconButton(
      //         icon: const Icon(Icons.filter_list, size: 40, color: navyBlue),
      //         onPressed: () {
      //           // Handle location icon press
      //         },
      //       ),
      //     ],
      //   ),
      // ),
      body: AnimatedBackground(
        behaviour: buildRandomParticleBehaviour(),
        vsync: this,
        child: PageView(
          controller: pageController,
          onPageChanged: onPageChanged,
          children: accTyp == "o" ? bottomNavBarItems_O : bottomNavBarItems_V,
        ),
      ),
      bottomNavigationBar: CupertinoTabBar(
        backgroundColor: deepYellow,
        activeColor: navyBlue,
        inactiveColor: lightBlue,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: accTyp == "o" ? "My Events" : "Explore",
            activeIcon: accTyp == "o"
                ? const Icon(Icons.event)
                : const Icon(Icons.explore),
            icon: accTyp == "o"
                ? const Icon(Icons.event_outlined)
                : const Icon(Icons.explore_outlined),
          ),
          BottomNavigationBarItem(
            label: accTyp == "o" ? "Requests" : "Following",
            activeIcon: const Icon(Icons.notifications),
            icon: const Icon(Icons.notifications_none_outlined),
          ),
          const BottomNavigationBarItem(
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
