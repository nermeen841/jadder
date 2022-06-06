import 'package:flutter/material.dart';
import 'package:jadder/features/chat/cmponnent/chat_item.dart';

class ChatBody extends StatelessWidget {
  const ChatBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: w * 0.02, vertical: h * 0.02),
      child: ListView.separated(
          shrinkWrap: true,
          primary: false,
          itemBuilder: (context, index) => const ChatItemCard(),
          separatorBuilder: (context, index) => SizedBox(
                height: h * 0.04,
              ),
          itemCount: 10),
    );
  }
}
