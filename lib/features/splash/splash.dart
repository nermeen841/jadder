import 'dart:async';
import 'package:flutter/material.dart';
import 'package:jadder/core/constants/constants.dart';
import 'package:jadder/features/authnitication/login/login.dart';

class SplshScreen extends StatefulWidget {
  const SplshScreen({Key? key}) : super(key: key);

  @override
  State<SplshScreen> createState() => _SplshScreenState();
}

class _SplshScreenState extends State<SplshScreen> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 5),
      () => Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const LoginScreen()),
          (route) => false),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: h * 0.2,
          ),
          logoImage(),
          SizedBox(
            height: h * 0.3,
          ),
          Center(child: Image.asset(kLogo2)),
        ],
      ),
    );
  }
}
