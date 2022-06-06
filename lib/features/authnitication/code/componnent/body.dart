import 'package:flutter/material.dart';
import 'package:jadder/core/constants/constants.dart';
import 'package:jadder/core/widgets/custom_buttons_widget.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/widgets/custom_text_field.dart';

class CodeBody extends StatefulWidget {
  final VoidCallback press;
  const CodeBody({Key? key, required this.press}) : super(key: key);

  @override
  State<CodeBody> createState() => _CodeBodyState();
}

class _CodeBodyState extends State<CodeBody> {
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
              "Welcome back",
              style: headingStyle,
            ),
            SizedBox(
              height: h * 0.015,
            ),
            SizedBox(
              width: w * 0.7,
              child: Text(
                "Please enter verification code",
                maxLines: 2,
                style: headingStyle.copyWith(
                    color: colorGrey, fontWeight: FontWeight.w400, height: 1.5),
              ),
            ),
            SizedBox(
              height: h * 0.04,
            ),
            CustomTextFormField(
              label: 'verification code',
              hint: 'verification code',
              inputType: TextInputType.number,
              focusNode: phoneFocus,
              controller: phone,
              onSaved: (val) {},
              validator: (value) {
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
              onTap: widget.press,
              text: 'Confirm',
            ),
            SizedBox(
              height: h * 0.02,
            ),
            CustomGeneralButton(
              color: Colors.white,
              onTap: () {},
              text: 'Resend code',
              textColor: kMainColor,
            ),
          ],
        ),
      ),
    );
  }
}
