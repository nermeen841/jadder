import 'package:flutter/material.dart';
import 'package:jadder/core/constants/constants.dart';
import 'package:jadder/features/authnitication/reset%20password/componnent/body.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarNoTitle(),
      body: const ResetPasswordBody(),
    );
  }
}
