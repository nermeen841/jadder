// ignore_for_file: body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:jadder/core/helper/validation.dart';
import 'package:jadder/features/authnitication/forget%20password/forget_password.dart';
import 'package:jadder/features/authnitication/login%20selection/login_selection.dart';
import 'package:jadder/features/layout/layout.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/widgets/custom_buttons_widget.dart';
import '../../../../core/widgets/custom_text_field.dart';

class LoginScreenBody extends StatefulWidget {
  const LoginScreenBody({Key? key}) : super(key: key);

  @override
  State<LoginScreenBody> createState() => _LoginScreenBodyState();
}

class _LoginScreenBodyState extends State<LoginScreenBody> {
  final formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  FocusNode emailFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: w * 0.03, vertical: h * 0.03),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: h * 0.04,
            ),
            logoImage(),
            SizedBox(
              height: h * 0.1,
            ),
            Text(
              "Welcome back",
              style: headingStyle,
            ),
            SizedBox(
              height: h * 0.04,
            ),
            CustomTextFormField(
              label: 'Email or phone number',
              hint: 'Email or phone number',
              inputType: TextInputType.emailAddress,
              focusNode: emailFocus,
              controller: email,
              onSaved: (val) {},
              validator: (value) {
                validateName(value!);
                return null;
              },
              onEditingComplete: () {
                emailFocus.unfocus();
                FocusScope.of(context).requestFocus(passwordFocus);
              },
            ),
            SizedBox(
              height: h * 0.04,
            ),
            CustomTextFormField(
              label: 'password',
              hint: 'password',
              focusNode: passwordFocus,
              controller: password,
              inputType: TextInputType.text,
              isPassword: true,
              onSaved: (val) {},
              validator: (value) {
                validatePassword(value!);
              },
              onEditingComplete: () {
                passwordFocus.unfocus();
              },
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ForgetPassordScreen()));
              },
              child: Text(
                "Forget your password ?",
                style: headingStyle.copyWith(
                    fontWeight: FontWeight.w400, color: colordeepGrey),
              ),
            ),
            SizedBox(
              height: h * 0.04,
            ),
            CustomGeneralButton(
              onTap: () {
                formKey.currentState!.validate();
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LayoutScreen()),
                    (route) => false);
              },
              text: 'Login',
            ),
            SizedBox(
              height: h * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Do't have an account ",
                  style: headingStyle.copyWith(color: colordeepGrey),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: ((context) =>
                                const LoginSelectionScreen())));
                  },
                  child: Text(
                    "press here",
                    style: headingStyle.copyWith(
                        color: kMainColor, fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
