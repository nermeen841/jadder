import 'package:flutter/material.dart';
import 'package:jadder/core/constants/colors.dart';
import 'package:jadder/core/widgets/custom_buttons_widget.dart';

import '../../core/constants/constants.dart';

class WalletBody extends StatelessWidget {
  const WalletBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: h * 0.02, horizontal: w * 0.04),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: h * 0.02,
          ),
          Center(
            child: Image.asset("asset/images/Group 98065.png"),
          ),
          SizedBox(
            height: h * 0.03,
          ),
          Text(
            "account balance",
            style: headingStyle,
          ),
          SizedBox(
            height: h * 0.03,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Withdrawable Balance",
                    style: headingStyle.copyWith(
                        fontSize: w * 0.04, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Suspended balance",
                    style: headingStyle.copyWith(
                        fontSize: w * 0.04, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: h * 0.02,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "900.00 R.S",
                    style: headingStyle.copyWith(
                        color: kMainColor,
                        fontSize: w * 0.04,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "900.00 R.S",
                    style: headingStyle.copyWith(
                        color: kMainColor,
                        fontSize: w * 0.04,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: h * 0.02,
              ),
              const Divider(),
              SizedBox(
                height: h * 0.02,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total balance",
                    style: headingStyle.copyWith(
                        fontSize: w * 0.04, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "900.00 R.S",
                    style: headingStyle.copyWith(
                        color: kMainColor,
                        fontSize: w * 0.04,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: h * 0.04,
              ),
              CustomGeneralButton(
                text: "Balance withdrawal",
                iconImage: "asset/images/withdrawal.png",
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
