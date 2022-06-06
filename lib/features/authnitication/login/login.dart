import 'package:flutter/material.dart';
import 'package:jadder/core/constants/constants.dart';
import 'package:jadder/features/authnitication/login/componnent/body.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarNoTitle(),
      body: const LoginScreenBody(),
    );
  }
}
