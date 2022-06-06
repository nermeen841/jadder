import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';

class UpdateProfileImage extends StatefulWidget {
  const UpdateProfileImage({Key? key}) : super(key: key);

  @override
  State<UpdateProfileImage> createState() => _UpdateProfileImageState();
}

class _UpdateProfileImageState extends State<UpdateProfileImage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Stack(
      alignment: AlignmentDirectional.bottomStart,
      children: [
        Center(
          child: CircleAvatar(
            radius: w * 0.174,
            backgroundColor: colorLightGrey,
            child: CircleAvatar(
              radius: w * 0.17,
              backgroundColor: Colors.white,
              child: Center(
                child: Image.asset(
                  "asset/images/Group 77157.png",
                  color: colorLightGrey,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: w * 0.17, top: h * 0.07),
          child: Center(
            child: CircleAvatar(
              backgroundColor: kMainColor,
              radius: w * 0.05,
              child: const Center(
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
