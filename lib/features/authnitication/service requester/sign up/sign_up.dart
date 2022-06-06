import 'package:flutter/material.dart';
import 'package:jadder/core/constants/constants.dart';
import 'package:jadder/core/widgets/profile_image.dart';
import 'package:jadder/features/authnitication/service%20requester/sign%20up/componnent/body.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: appbarNoTitle(),
      body: SizedBox(
        width: w,
        height: h,
        child: Expanded(
          child: SingleChildScrollView(
            padding:
                EdgeInsets.symmetric(vertical: h * 0.02, horizontal: w * 0.02),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ProfileImage(),
                SizedBox(
                  height: h * 0.04,
                ),
                const Body(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
