import 'package:final_app/sign_up_page.dart';
import 'package:final_app/src/view/profile_page/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'file:///C:/Users/vaish/Desktop/issue-tracker-mobile-client/lib/src/view/home_page/feeds.dart';
import 'package:final_app/login_page.dart';
import 'package:final_app/src/view/search_page/search_bar.dart';

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

  List<Widget> _pages = [FeedsPage(), ProfilePage(), SearchPage()];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
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
              color: Colors.black,
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
                    iconActiveColor: Colors.purple,
                    iconColor: Colors.white,
                    textColor: Colors.purple,
                    backgroundColor: Colors.purple.withOpacity(.2),
                    iconSize: 24,
                    padding: padding,
                    icon: LineIcons.home,
                    text: 'Home',
                  ),
                  GButton(
                    gap: gap,
                    iconActiveColor: Colors.pink,
                    iconColor: Colors.white,
                    textColor: Colors.pink,
                    backgroundColor: Colors.pink.withOpacity(.2),
                    iconSize: 24,
                    padding: padding,
                    icon: LineIcons.user,
                    text: 'Profile',
                  ),
                  GButton(
                    gap: gap,
                    iconActiveColor: Colors.amber[600],
                    iconColor: Colors.white,
                    textColor: Colors.amber[600],
                    backgroundColor: Colors.amber[600]!.withOpacity(.2),
                    iconSize: 24,
                    padding: padding,
                    icon: LineIcons.search,
                    text: 'Search',
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
