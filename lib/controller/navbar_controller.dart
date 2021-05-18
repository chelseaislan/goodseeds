import 'package:flutter/material.dart';
import 'package:goodseeds/colors.dart';
import 'package:goodseeds/view/home_pages/account_page.dart';
import 'package:goodseeds/view/home_pages/fundraising_page.dart';
import 'package:goodseeds/view/home_pages/home_page.dart';
import 'package:goodseeds/view/home_pages/inbox_page.dart';
import 'package:goodseeds/view/home_pages/my_donation_page.dart';

class HomeNavBar extends StatefulWidget {
  @override
  _HomeNavBarState createState() => _HomeNavBarState();
}

class _HomeNavBarState extends State<HomeNavBar> {
  var selectedIndex = 0;
  var widgetOptions = [
    HomePage(),
    MyDonationPage(),
    FundraisePage(),
    InboxPage(),
    AccountPage(),
  ];

  void onItemTap(var index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetOptions.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: kSecondGrey,
        type: BottomNavigationBarType.fixed,
        items: [
          bottomNavBarItem(Icons.home_outlined, "Home"),
          bottomNavBarItem(Icons.history_edu_outlined, "History"),
          bottomNavBarItem(Icons.photo_filter_outlined, "Raise Fund"),
          bottomNavBarItem(Icons.mail_outline_rounded, "Inbox"),
          bottomNavBarItem(Icons.account_circle_outlined, "Account"),
        ],
        currentIndex: selectedIndex,
        onTap: onItemTap,
        selectedItemColor: kPrimaryGreen,
        unselectedItemColor: kPrimaryGrey,
        selectedLabelStyle: Theme.of(context).textTheme.subtitle1,
        unselectedLabelStyle: Theme.of(context).textTheme.subtitle2,
      ),
    );
  }

  BottomNavigationBarItem bottomNavBarItem(navBarIconData, navBarText) {
    return BottomNavigationBarItem(
      icon: Icon(navBarIconData),
      label: navBarText,
      tooltip: navBarText,
    );
  }
}
