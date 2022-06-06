// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:jadder/core/helper/validation.dart';
import 'package:jadder/core/widgets/custom_text_field.dart';
import 'register_button.dart';

class PersonForm extends StatelessWidget {
  PersonForm({Key? key}) : super(key: key);

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController phone2 = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  FocusNode namefocusNode = FocusNode();
  FocusNode phonefocusNode = FocusNode();
  FocusNode phone2focusNode = FocusNode();
  FocusNode emailfocusNode = FocusNode();
  FocusNode paswordfocusNode = FocusNode();
  FocusNode confirmPasswordfocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Form(
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: h * 0.03,
            ),
            CustomTextFormField(
              label: "",
              hint: "Full name",
              controller: name,
              focusNode: namefocusNode,
              validator: (value) => validateName(value!),
              onEditingComplete: () {
                namefocusNode.unfocus();
                FocusScope.of(context).requestFocus(emailfocusNode);
              },
            ),
            SizedBox(
              height: h * 0.02,
            ),
            CustomTextFormField(
              label: "",
              hint: "Email",
              controller: email,
              focusNode: emailfocusNode,
              validator: (value) => validateEmail(value!),
              onEditingComplete: () {
                emailfocusNode.unfocus();
                FocusScope.of(context).requestFocus(phonefocusNode);
              },
            ),
            SizedBox(
              height: h * 0.02,
            ),
            CustomTextFormField(
              label: "",
              hint: "phone number",
              controller: phone,
              focusNode: phonefocusNode,
              validator: (value) => validateMobile(value!),
              onEditingComplete: () {
                phonefocusNode.unfocus();
                FocusScope.of(context).requestFocus(phone2focusNode);
              },
            ),
            SizedBox(
              height: h * 0.02,
            ),
            CustomTextFormField(
              label: "",
              hint: "phone number",
              controller: phone2,
              focusNode: phone2focusNode,
              validator: (value) => validateMobile(value!),
              onEditingComplete: () {
                phone2focusNode.unfocus();
                FocusScope.of(context).requestFocus(paswordfocusNode);
              },
            ),
            SizedBox(
              height: h * 0.02,
            ),
            CustomTextFormField(
              label: "",
              hint: "password",
              controller: password,
              focusNode: paswordfocusNode,
              validator: (value) => validatePassword(value!),
              onEditingComplete: () {
                paswordfocusNode.unfocus();
                FocusScope.of(context).requestFocus(confirmPasswordfocusNode);
              },
            ),
            SizedBox(
              height: h * 0.02,
            ),
            CustomTextFormField(
              label: "",
              hint: "Confirm password",
              controller: confirmPassword,
              focusNode: confirmPasswordfocusNode,
              validator: (value) => validatePassword(value!),
              onEditingComplete: () {
                confirmPasswordfocusNode.unfocus();
              },
            ),
            SizedBox(
              height: h * 0.04,
            ),
            const RegisterButton(),
          ],
        ),
      ),
    );
  }
}
