import 'package:flutter/material.dart';
import 'package:jadder/core/constants/colors.dart';
import 'package:jadder/core/constants/constants.dart';
import 'package:jadder/core/widgets/custom_buttons_widget.dart';
import 'package:jadder/core/widgets/custom_text_field.dart';

void showUpdateAlert({required context}) {
  showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          title: Column(
            children: [
              Align(
                alignment: AlignmentDirectional.topStart,
                child: InkWell(
                  onTap: () => Navigator.pop(context),
                  child: CircleAvatar(
                    backgroundColor: colorLightGrey,
                    radius: 15,
                    child: const Center(
                      child: Icon(
                        Icons.close,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Image.asset("asset/images/Group 98218.png"),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: Center(
                  child: Text(
                    "في انتظار موافقة الإدارة على التعديلات",
                    style: headingStyle,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        );
      });
}

/////////////////////////////////////////////////////////////////////////

TextEditingController oldPassword = TextEditingController();
TextEditingController newPassword = TextEditingController();
TextEditingController confirmNewPassword = TextEditingController();

FocusNode focusNode = FocusNode();
FocusNode newPassNode = FocusNode();
FocusNode confirmPasswordNode = FocusNode();

void changePasswordDialog({required context}) {
  showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          title: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: CircleAvatar(
                      backgroundColor: colorLightGrey,
                      radius: 15,
                      child: const Center(
                        child: Icon(
                          Icons.close,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Change password",
                    style: headingStyle,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFormField(
                label: "",
                hint: "old password",
                controller: oldPassword,
                focusNode: focusNode,
                onEditingComplete: () {
                  focusNode.unfocus();
                  FocusScope.of(context).requestFocus(newPassNode);
                },
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFormField(
                label: "",
                hint: "new password",
                controller: newPassword,
                focusNode: newPassNode,
                onEditingComplete: () {
                  newPassNode.unfocus();
                  FocusScope.of(context).requestFocus(confirmPasswordNode);
                },
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFormField(
                label: "",
                hint: "confirm new password",
                controller: confirmNewPassword,
                focusNode: confirmPasswordNode,
                onEditingComplete: () {
                  confirmPasswordNode.unfocus();
                },
              ),
              const SizedBox(
                height: 20,
              ),
              CustomGeneralButton(
                text: "Send",
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      });
}
