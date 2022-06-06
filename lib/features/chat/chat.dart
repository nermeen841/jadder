import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';
import 'cmponnent/body.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Chat list ( 50 )",
          style: headingStyle,
        ),
      ),
      body: const ChatBody(),
    );
  }
}
