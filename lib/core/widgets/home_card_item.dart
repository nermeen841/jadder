import 'package:flutter/material.dart';
import 'package:jadder/business%20logic/appCubit/appcubit_cubit.dart';
import 'package:jadder/core/constants/colors.dart';

import '../constants/constants.dart';

class HomeCardItem extends StatelessWidget {
  final String image;
  final int selected;
  final String text;
  const HomeCardItem(
      {Key? key,
      required this.image,
      required this.text,
      required this.selected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      width: w * 0.45,
      height: h * 0.15,
      decoration: BoxDecoration(
        color: (AppcubitCubit.get(context).selected == selected)
            ? colorBetrolly
            : Colors.white,
        border: Border.all(
          color: colorBetrolly.withOpacity(0.2),
        ),
        borderRadius: BorderRadius.circular(w * 0.04),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Image.asset(
              image,
            ),
          ),
          Center(
            child: Text(
              text,
              maxLines: 2,
              style: headingStyle.copyWith(
                color: (AppcubitCubit.get(context).selected == selected)
                    ? Colors.white
                    : colordeepGrey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
