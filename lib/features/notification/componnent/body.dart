import 'package:flutter/material.dart';
import 'package:jadder/core/widgets/notification_item.dart';

class NotificationBody extends StatelessWidget {
  const NotificationBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: h * 0.02, horizontal: w * 0.02),
      child: ListView.separated(
          shrinkWrap: true,
          primary: false,
          itemBuilder: (context, index) => const NotificationCardItem(
              content: "تمت إضافة عرض سعر على طلب استشارتك القانونية",
              datetime: "24, june 2022"),
          separatorBuilder: (context, index) => SizedBox(
                height: h * 0.02,
              ),
          itemCount: 10),
    );
  }
}
