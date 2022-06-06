import 'package:flutter/material.dart';
import 'package:jadder/core/constants/constants.dart';
import 'package:jadder/features/authnitication/code/componnent/body.dart';

class VerificationCodeScreen extends StatelessWidget {
  final VoidCallback press;
  const VerificationCodeScreen({Key? key, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarNoTitle(),
      body: CodeBody(
        press: press,
      ),
    );
  }
}
