import 'package:flutter/material.dart';

import '../../core/constants/colors.dart';
import '../../core/constants/constants.dart';

class AboutScreen extends StatelessWidget {
  final String title;
  const AboutScreen({Key? key, required this.title}) : super(key: key);

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
          title,
          style: headingStyle,
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: h * 0.02, horizontal: w * 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset("asset/images/logo.png"),
            SizedBox(
              height: h * 0.04,
            ),
            Wrap(
              children: [
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                  style: headingStyle.copyWith(
                    fontSize: w * 0.035,
                    fontWeight: FontWeight.w400,
                    height: 1.7,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
