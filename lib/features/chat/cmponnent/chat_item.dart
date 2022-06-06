import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/constants.dart';

class ChatItemCard extends StatelessWidget {
  const ChatItemCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: w * 0.02, vertical: h * 0.02),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(w * 0.04),
        color: Colors.white,
        border: Border.all(color: colorLightGrey),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: w * 0.1,
                    height: h * 0.1,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: colorLightGrey, width: 2),
                    ),
                    child: CircleAvatar(
                      radius: w * 0.09,
                      backgroundColor: Colors.white,
                      backgroundImage: const NetworkImage(
                          "https://img.freepik.com/free-photo/cheerful-curly-business-girl-wearing-glasses_176420-206.jpg?t=st=1654505109~exp=1654505709~hmac=a87686d930876cc7878ffd85d01efc7cc455a937939096ef763ffd612deb3e84&w=360"),
                    ),
                  ),
                  SizedBox(width: w * 0.02),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Ahmed mohamed",
                        style: headingStyle.copyWith(fontSize: w * 0.035),
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Order Number : ",
                              style: headingStyle.copyWith(
                                  color: kMainColor,
                                  fontSize: w * 0.035,
                                  fontWeight: FontWeight.w400),
                            ),
                            TextSpan(
                              text: " ",
                              style: headingStyle,
                            ),
                            TextSpan(
                              text: "2424534",
                              style: headingStyle.copyWith(
                                  color: colordeepGrey, fontSize: w * 0.035),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              Text(
                "20 minute",
                style: headingStyle.copyWith(
                    color: colorGrey,
                    fontSize: w * 0.035,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "fdffspspkgakga[gka[gka[gkqa[kgqa[g[gkddfvl,vxc,",
                style: headingStyle.copyWith(
                    color: colorGrey,
                    fontSize: w * 0.035,
                    fontWeight: FontWeight.w400),
              ),
              const Spacer(),
              CircleAvatar(
                backgroundColor: colorRed,
                radius: w * 0.025,
                child: Center(
                  child: Text(
                    "1",
                    style: headingStyle.copyWith(
                        color: Colors.white,
                        fontSize: w * 0.035,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
