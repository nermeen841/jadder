import 'package:flutter/material.dart';
import 'package:jadder/features/authnitication/service%20requester/sign%20up/componnent/person_form.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/constants.dart';
import 'moral_person_form.dart';
import 'special_person_form.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentIndex = 0;
  List<String> text = [
    "person",
    "public moral person",
    "A special spiritual person"
  ];
  List<Widget> screens = [
    PersonForm(),
    MoralPersonForm(),
    SpecialPersonForm(),
  ];
  late PageController pageController;
  @override
  void initState() {
    pageController = PageController(initialPage: currentIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Welcome back",
          textAlign: TextAlign.start,
          style: headingStyle.copyWith(
            color: colordeepGrey,
          ),
        ),
        SizedBox(
          height: h * 0.02,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              text.length,
              (index) => buildOptions(index: index, h: h, w: w),
            ),
          ),
        ),
        SizedBox(
          height: h * 0.02,
        ),
        SizedBox(
          width: w,
          height: h,
          child: PageView.builder(
            itemCount: screens.length,
            controller: pageController,
            onPageChanged: (val) {
              setState(() {
                currentIndex = val;
              });
            },
            itemBuilder: (context, index) => screens[index],
          ),
        ),
      ],
    );
  }

  AnimatedContainer buildOptions(
      {required int index, required double h, required double w}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      color: Colors.transparent,
      padding: EdgeInsets.symmetric(horizontal: w * 0.01),
      child: InkWell(
        onTap: () {
          pageController.animateToPage(index,
              duration: const Duration(microseconds: 500),
              curve: Curves.fastOutSlowIn);
        },
        child: Row(
          children: [
            Container(
              width: w * 0.05,
              height: h * 0.027,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(w * 0.015),
                  color: colorLightGrey),
              child: Center(
                child: Container(
                  width: w * 0.04,
                  height: h * 0.022,
                  margin: EdgeInsets.symmetric(
                      vertical: w * 0.01, horizontal: h * 0.004),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(w * 0.01),
                      color:
                          currentIndex == index ? kMainColor : colorLightGrey),
                ),
              ),
            ),
            SizedBox(
              width: w * 0.015,
            ),
            Text(
              text[index],
              style: headingStyle.copyWith(
                color: colordeepGrey,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              width: w * 0.015,
            ),
          ],
        ),
      ),
    );
  }
}
