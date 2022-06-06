import 'package:flutter/material.dart';
import 'package:jadder/core/constants/constants.dart';
import 'package:jadder/features/authnitication/login%20selection/componnent/body.dart';

class LoginSelectionScreen extends StatefulWidget {
  const LoginSelectionScreen({Key? key}) : super(key: key);

  @override
  State<LoginSelectionScreen> createState() => _LoginSelectionScreenState();
}

class _LoginSelectionScreenState extends State<LoginSelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarNoTitle(),
      body: const LoginSelectionBody(),
    );
  }
}
