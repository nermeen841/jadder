import 'package:flutter/material.dart';
import 'package:jadder/core/constants/constants.dart';

import '../constants/colors.dart';

class PersonCardItem extends StatelessWidget {
  final String name;
  final String image;
  final String country;
  final String type;
  final String coast;
  final String donetaskCount;
  const PersonCardItem(
      {Key? key,
      required this.name,
      required this.image,
      required this.country,
      required this.type,
      required this.coast,
      required this.donetaskCount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: h * 0.01, horizontal: w * 0.01),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(w * 0.02),
        boxShadow: [
          BoxShadow(
              color: colorLightGrey,
              offset: const Offset(0, 3),
              spreadRadius: 3,
              blurRadius: 3),
        ],
      ),
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                width: w * 0.4,
                height: h * 0.2,
                padding: EdgeInsets.symmetric(
                    vertical: h * 0.01, horizontal: w * 0.01),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(w * 0.03),
                  image: DecorationImage(
                      image: NetworkImage(image), fit: BoxFit.cover),
                ),
              ),
              Image.asset("asset/images/Group 19036.png"),
              Padding(
                  padding: EdgeInsets.only(top: h * 0.18),
                  child: Image.asset("asset/images/Ellipse 570.png")),
            ],
          ),
          SizedBox(
            width: w * 0.01,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    name,
                    style: headingStyle.copyWith(fontSize: w * 0.03),
                  ),
                  SizedBox(
                    width: w * 0.1,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: colorGrey,
                        size: w * 0.05,
                      ),
                      SizedBox(
                        width: w * 0.02,
                      ),
                      Text(
                        country,
                        style: headingStyle.copyWith(
                            color: colorGrey, fontSize: w * 0.03),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: h * 0.01,
              ),
              Row(
                children: [
                  Image.asset("asset/images/megaphone.png"),
                  SizedBox(
                    width: w * 0.02,
                  ),
                  Text(
                    type,
                    style: headingStyle.copyWith(
                        color: kMainColor,
                        fontSize: w * 0.03,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: h * 0.01,
              ),
              Row(
                children: [
                  Image.asset("asset/images/Path 15965.png"),
                  SizedBox(
                    width: w * 0.02,
                  ),
                  Text(
                    "الاستشارات المنجزه : $donetaskCount",
                    style: headingStyle.copyWith(
                        fontSize: w * 0.03, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: h * 0.01,
              ),
              Row(
                children: [
                  Image.asset("asset/images/Group 88079.png"),
                  SizedBox(
                    width: w * 0.02,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$coast ر.س" "\n",
                          style: headingStyle.copyWith(
                              color: colorRed,
                              fontSize: w * 0.03,
                              fontWeight: FontWeight.w400),
                        ),
                        TextSpan(
                          text: "(في الساعة الواحدة)",
                          style: headingStyle.copyWith(
                              color: colorGrey,
                              fontSize: w * 0.03,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
