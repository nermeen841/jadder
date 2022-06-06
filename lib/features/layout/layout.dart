import 'package:flutter/material.dart';
import 'package:jadder/core/constants/colors.dart';
import 'package:jadder/core/constants/constants.dart';
import 'package:jadder/features/chat/chat.dart';
import 'package:jadder/features/home/home.dart';
import 'package:jadder/features/my%20account/my_account.dart';

import '../notification/notification.dart';
import '../orders/orders.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    const MyOrdersScreen(),
    const ChatScreen(),
    const HomeScreen(),
    const NotificationScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: kMainColor,
        selectedItemColor: kMainColor,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedLabelStyle: headingStyle.copyWith(
            color: kMainColor, fontWeight: FontWeight.w400, fontSize: w * 0.03),
        selectedLabelStyle: headingStyle.copyWith(
            color: kMainColor, fontWeight: FontWeight.w400, fontSize: w * 0.03),
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Image(
                image: const AssetImage("asset/images/orders.png"),
                width: w * 0.06,
              ),
              label: "my Orders"),
          const BottomNavigationBarItem(
              icon: Image(
                image: AssetImage("asset/images/Group 98106.png"),
              ),
              label: "chat"),
          const BottomNavigationBarItem(
              icon: Image(
                image: AssetImage("asset/images/home.png"),
              ),
              label: "home"),
          const BottomNavigationBarItem(
              icon: Image(
                image: AssetImage("asset/images/noti.png"),
              ),
              label: "notification"),
          const BottomNavigationBarItem(
              icon: Image(
                image: AssetImage("asset/images/myaccount.png"),
              ),
              label: "my account"),
        ],
      ),
      body: screens[currentIndex],
    );
  }
}
