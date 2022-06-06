import 'package:flutter/material.dart';
import 'package:jadder/core/constants/constants.dart';

import 'componnent/body.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "notification",
          style: headingStyle,
        ),
      ),
      body: const NotificationBody(),
    );
  }
}
