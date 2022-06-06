import 'package:flutter/material.dart';
import 'package:jadder/core/constants/colors.dart';
import 'package:jadder/core/constants/constants.dart';
import 'package:jadder/core/helper/validation.dart';
import 'package:jadder/core/widgets/custom_buttons_widget.dart';
import 'package:jadder/features/authnitication/code/code.dart';

import '../../../../core/widgets/custom_text_field.dart';
import '../../reset password/reset_password.dart';

class ForgetPasswordBody extends StatefulWidget {
  const ForgetPasswordBody({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordBody> createState() => _ForgetPasswordBodyState();
}

class _ForgetPasswordBodyState extends State<ForgetPasswordBody> {
  TextEditingController phone = TextEditingController();
  FocusNode phoneFocus = FocusNode();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: w * 0.03, vertical: h * 0.03),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: h * 0.04,
            ),
            logoImage(),
            SizedBox(
              height: h * 0.15,
            ),
            Text(
              "Reset Password",
              style: headingStyle,
            ),
            SizedBox(
              height: h * 0.015,
            ),
            SizedBox(
              width: w * 0.7,
              child: Text(
                "Please enter your phone number to send verification code",
                maxLines: 2,
                style: headingStyle.copyWith(
                    color: colorGrey, fontWeight: FontWeight.w400, height: 1.5),
              ),
            ),
            SizedBox(
              height: h * 0.04,
            ),
            CustomTextFormField(
              label: ' phone number',
              hint: 'phone number',
              inputType: TextInputType.phone,
              focusNode: phoneFocus,
              controller: phone,
              onSaved: (val) {},
              validator: (value) {
                validateMobile(value!);
                return null;
              },
              onEditingComplete: () {
                phoneFocus.unfocus();
              },
            ),
            SizedBox(
              height: h * 0.04,
            ),
            CustomGeneralButton(
              onTap: () {
                formKey.currentState!.validate();
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => VerificationCodeScreen(
                              press: () => Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ResetPasswordScreen())),
                            )));
              },
              text: 'Send',
            ),
          ],
        ),
      ),
    );
  }
}
