// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:jadder/core/constants/constants.dart';
import 'package:jadder/core/widgets/custom_text_field.dart';
import 'package:jadder/features/authnitication/service%20requester/sign%20up/componnent/register_button.dart';
import '../../../../../core/constants/colors.dart';
import '../../../../../core/helper/validation.dart';

class SpecialPersonForm extends StatelessWidget {
  SpecialPersonForm({Key? key}) : super(key: key);

  TextEditingController name = TextEditingController();
  TextEditingController servicename = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController phone2 = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  FocusNode namefocusNode = FocusNode();
  FocusNode servicenamefocusNode = FocusNode();
  FocusNode phonefocusNode = FocusNode();
  FocusNode phone2focusNode = FocusNode();
  FocusNode emailfocusNode = FocusNode();
  FocusNode paswordfocusNode = FocusNode();
  FocusNode confirmPasswordfocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Expanded(
      child: Form(
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: h * 0.03,
              ),
              Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                      vertical: h * 0.01, horizontal: w * 0.01),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(w * 0.05),
                    color: Colors.white,
                    border: Border.all(color: colorLightGrey),
                  ),
                  child: GridView.builder(
                    itemCount: 9,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 1,
                      crossAxisSpacing: 10,
                      childAspectRatio: 1.8,
                    ),
                    semanticChildCount: 3,
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => RadioListTile(
                        tileColor: colordeepGrey,
                        contentPadding: EdgeInsets.zero,
                        selectedTileColor: colordeepGrey,
                        activeColor: kMainColor,
                        title: Text(
                          "university",
                          style: headingStyle.copyWith(
                              fontWeight: FontWeight.w400, fontSize: w * 0.035),
                        ),
                        value: 0,
                        groupValue: index,
                        onChanged: (value) {}),
                  )),
              SizedBox(
                height: h * 0.03,
              ),
              CustomTextFormField(
                label: "",
                hint: "Facility Name",
                controller: name,
                focusNode: namefocusNode,
                validator: (value) => validateName(value!),
                onEditingComplete: () {
                  namefocusNode.unfocus();
                  FocusScope.of(context).requestFocus(servicenamefocusNode);
                },
              ),
              SizedBox(
                height: h * 0.02,
              ),
              CustomTextFormField(
                label: "",
                hint: "Service representative name ( optional )",
                controller: servicename,
                focusNode: servicenamefocusNode,
                validator: (value) => validateName(value!),
                onEditingComplete: () {
                  servicenamefocusNode.unfocus();
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
                height: h * 0.01,
              ),
              const RegisterButton(),
            ],
          ),
        ),
      ),
    );
  }
}
