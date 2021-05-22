import 'package:final_app/src/pages/profile_page.dart';
import 'package:final_app/themes.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:final_app/src/components/home_page/feeds.dart';
import 'package:final_app/src/pages/search_bar.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selectedIndex = 0;
  int badge = 0;
  final padding = EdgeInsets.symmetric(horizontal: 18, vertical: 12);
  double gap = 10;

  PageController controller = PageController();

  List<Widget> _pages = [FeedsPage(), SearchPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: kMyCardColour,
        body: PageView.builder(
          onPageChanged: (page) {
            setState(() {
              selectedIndex = page;
              badge = badge + 1;
            });
          },
          controller: controller,
          itemBuilder: (context, position) {
            return _pages[position];
          },
          itemCount: 3,
        ),
        bottomNavigationBar: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(.8),
              borderRadius: BorderRadius.all(Radius.circular(100)),
              boxShadow: [
                BoxShadow(
                  spreadRadius: -10,
                  blurRadius: 60,
                  color: Colors.black.withOpacity(.4),
                  offset: Offset(0, 25),
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 3),
              child: GNav(
                tabs: [
                  GButton(
                    gap: gap,
                    iconActiveColor: kMyButtonColor,
                    iconColor: Colors.black,
                    textColor: kMyButtonColor,
                    backgroundColor: Colors.deepPurple.withOpacity(.4),
                    iconSize: 24,
                    padding: padding,
                    icon: LineIcons.home,
                    text: 'Home',
                  ),
                  GButton(
                    gap: gap,
                    iconActiveColor: kMyButtonColor,
                    iconColor: Colors.black,
                    textColor: kMyButtonColor,
                    backgroundColor: Colors.deepPurple.withOpacity(.4),
                    iconSize: 24,
                    padding: padding,
                    icon: LineIcons.search,
                    text: 'Search',
                  ),
                  GButton(
                    gap: gap,
                    iconActiveColor: kMyButtonColor,
                    iconColor: Colors.black,
                    textColor: kMyButtonColor,
                    backgroundColor: Colors.deepPurple.withOpacity(.4),
                    iconSize: 24,
                    padding: padding,
                    icon: LineIcons.user,
                    text: 'Profile',
                  ),
                ],
                selectedIndex: selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                  controller.jumpToPage(index);
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
