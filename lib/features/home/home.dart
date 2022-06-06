import 'package:flutter/material.dart';
import 'package:jadder/core/constants/colors.dart';
import 'package:jadder/features/home/componnent/body.dart';

import '../../core/constants/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return PreferredSize(
      preferredSize: Size(w, h),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
          width: w,
          height: h,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: w * 0.4,
                          height: h * 0.38,
                          decoration: BoxDecoration(
                            color: colorYellow,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(w * 0.05),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: w * 0.15, top: h * 0.1),
                          child: Image.asset(
                              "asset/images/cheerful-businessman-eyeglasses-office.png"),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: h * 0.07),
                          child: SizedBox(
                            width: w * 0.46,
                            child: Text(
                              "You have urgent matters\nYou need a quick consultation",
                              maxLines: 4,
                              style: headingStyle.copyWith(
                                fontSize: w * 0.04,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: h * 0.02,
                        ),
                        SizedBox(
                          width: w * 0.46,
                          child: Text(
                            "Start your instant\n consultation now",
                            maxLines: 4,
                            style: headingStyle.copyWith(
                              fontSize: w * 0.04,
                              color: colordeepGreen,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: h * 0.02,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: w * 0.35,
                            height: h * 0.07,
                            decoration: BoxDecoration(
                              color: colorRed,
                              borderRadius: BorderRadius.circular(w * 0.03),
                              boxShadow: [
                                BoxShadow(
                                    color: colorLightGrey,
                                    offset: const Offset(0, 2),
                                    spreadRadius: 2,
                                    blurRadius: 2),
                              ],
                            ),
                            child: Center(
                              child: Text(
                                "instant advice",
                                style:
                                    headingStyle.copyWith(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const HomeBody(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
