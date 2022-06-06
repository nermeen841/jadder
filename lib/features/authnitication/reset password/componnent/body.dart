// ignore_for_file: body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:jadder/core/helper/validation.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/widgets/custom_buttons_widget.dart';
import '../../../../core/widgets/custom_text_field.dart';

class ResetPasswordBody extends StatefulWidget {
  const ResetPasswordBody({Key? key}) : super(key: key);

  @override
  State<ResetPasswordBody> createState() => _ResetPasswordBodyState();
}

class _ResetPasswordBodyState extends State<ResetPasswordBody> {
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  FocusNode passwordFocus = FocusNode();
  FocusNode confirmpasswordFocus = FocusNode();
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
              height: h * 0.03,
            ),
            CustomTextFormField(
              label: 'New password',
              hint: 'New password',
              inputType: TextInputType.number,
              focusNode: passwordFocus,
              controller: password,
              onSaved: (val) {},
              validator: (value) {
                validatePassword(value!);
              },
              onEditingComplete: () {
                passwordFocus.unfocus();
                Focus.of(context).requestFocus(confirmpasswordFocus);
              },
            ),
            SizedBox(
              height: h * 0.015,
            ),
            CustomTextFormField(
              label: 'confirm password',
              hint: 'confirm password',
              inputType: TextInputType.number,
              focusNode: confirmpasswordFocus,
              controller: confirmpassword,
              onSaved: (val) {},
              validator: (value) =>
                  validateConfirmPassword(value!, password.text),
              onEditingComplete: () {
                confirmpasswordFocus.unfocus();
              },
            ),
            SizedBox(
              height: h * 0.04,
            ),
            CustomGeneralButton(
              onTap: () {
                ///TODO: MOVE TO LAYOUT
              },
              text: 'Send',
            ),
          ],
        ),
      ),
    );
  }
}
