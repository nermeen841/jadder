import 'package:flutter/material.dart';
import 'package:jadder/core/widgets/custom_buttons_widget.dart';

import '../../core/constants/colors.dart';
import '../../core/constants/constants.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back_ios,
            color: colordeepGrey,
          ),
        ),
        automaticallyImplyLeading: false,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          "App Language",
          style: headingStyle,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: h * 0.02, horizontal: w * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("asset/images/logo.png"),
            SizedBox(
              height: h * 0.15,
            ),
            Text("Choose Language", style: headingStyle),
            SizedBox(
              height: h * 0.04,
            ),
            CustomGeneralButton(
              text: "اللغة العربية",
              onTap: () => Navigator.pop(context),
            ),
            SizedBox(
              height: h * 0.04,
            ),
            CustomGeneralButton(
              text: "English",
              color: colorLightGrey,
              textColor: Colors.black,
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}
