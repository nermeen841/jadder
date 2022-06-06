import 'package:flutter/material.dart';
import 'package:jadder/features/authnitication/code/code.dart';
import 'package:jadder/features/layout/layout.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/constants.dart';
import '../../../../../core/widgets/custom_buttons_widget.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Checkbox(
                activeColor: kMainColor,
                checkColor: kMainColor,
                value: false,
                onChanged: (value) {}),
            TextButton(
                child: Text(
                  "Agree to the terms and conditions",
                  style: headingStyle.copyWith(
                      color: colordeepGreen,
                      decoration: TextDecoration.underline),
                ),
                onPressed: () {}),
          ],
        ),
        SizedBox(
          height: h * 0.02,
        ),
        CustomGeneralButton(
            text: "Register",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => VerificationCodeScreen(
                        press: () => Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LayoutScreen()),
                            (route) => false),
                      )),
                ),
              );
            }),
        SizedBox(
          height: h * 0.02,
        ),
        Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Have an accout ",
                style: headingStyle,
              ),
              TextButton(
                  child: Text(
                    "Press here",
                    style: headingStyle.copyWith(
                      color: kMainColor,
                    ),
                  ),
                  onPressed: () {}),
            ],
          ),
        ),
      ],
    );
  }
}
