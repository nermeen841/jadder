import 'package:flutter/material.dart';
import 'package:jadder/core/constants/colors.dart';
import 'package:jadder/core/constants/constants.dart';

class SelectionCard extends StatelessWidget {
  final bool isSelected;
  final String image;
  final String text;
  const SelectionCard(
      {Key? key,
      required this.isSelected,
      required this.image,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      width: w * 0.6,
      height: h * 0.2,
      decoration: BoxDecoration(
        color: (isSelected) ? kMainColor : Colors.white,
        borderRadius: BorderRadius.circular(w * 0.02),
        boxShadow: [
          BoxShadow(
              color: colorLightGrey,
              offset: const Offset(0, 3),
              spreadRadius: 3,
              blurRadius: 3),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Image.asset(
              image,
              color: (isSelected) ? Colors.white : kMainColor,
            ),
          ),
          Center(
            child: Text(
              text,
              maxLines: 2,
              style: headingStyle.copyWith(
                color: (isSelected) ? Colors.white : kMainColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
