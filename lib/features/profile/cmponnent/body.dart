import 'package:flutter/material.dart';
import 'package:jadder/core/constants/constants.dart';
import 'package:jadder/core/widgets/custom_buttons_widget.dart';
import 'package:jadder/features/profile/cmponnent/update_image.dart';

import '../../../core/constants/colors.dart';
import 'alert.dart';

class EditProfileBody extends StatelessWidget {
  const EditProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: h * 0.02, horizontal: w * 0.04),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const UpdateProfileImage(),
          SizedBox(
            height: h * 0.04,
          ),
          Text(
            "Full name",
            style: headingStyle,
          ),
          SizedBox(
            height: h * 0.02,
          ),
          infoItem(title: "نسمه حسن ", w: w, h: h),
          SizedBox(
            height: h * 0.02,
          ),
          Text(
            "phone number",
            style: headingStyle,
          ),
          SizedBox(
            height: h * 0.02,
          ),
          infoItem(title: "07388768", w: w, h: h),
          SizedBox(
            height: h * 0.02,
          ),
          Text(
            "Email",
            style: headingStyle,
          ),
          SizedBox(
            height: h * 0.02,
          ),
          infoItem(title: "nn@gmail.com", w: w, h: h),
          SizedBox(
            height: h * 0.02,
          ),
          CustomGeneralButton(
            text: "Save edits",
            onTap: () {
              showUpdateAlert(context: context);
            },
          ),
          SizedBox(
            height: h * 0.02,
          ),
          TextButton(
            onPressed: () {
              changePasswordDialog(context: context);
            },
            child: Center(
              child: Text(
                "Change password",
                style: headingStyle.copyWith(
                  color: kMainColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  infoItem({required String title, required double w, required double h}) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: h * 0.02, horizontal: w * 0.02),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(w * 0.02),
          border: Border.all(color: colorLightGrey),
          color: colorWhite_A),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: headingStyle.copyWith(
              color: colorGrey,
              fontSize: w * 0.035,
            ),
          ),
          Image.asset("asset/images/noun_edit_1383915.png")
        ],
      ),
    );
  }
}
