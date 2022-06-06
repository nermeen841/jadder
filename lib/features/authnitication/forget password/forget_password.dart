import 'package:flutter/material.dart';
import 'package:jadder/core/constants/constants.dart';
import 'package:jadder/features/authnitication/forget%20password/componnent/body.dart';

class ForgetPassordScreen extends StatelessWidget {
  const ForgetPassordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarNoTitle(),
      body: const ForgetPasswordBody(),
    );
  }
}
