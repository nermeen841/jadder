import 'package:flutter/material.dart';
import 'package:jadder/core/constants/colors.dart';
import '../../core/constants/constants.dart';
import 'body.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back_ios,
            color: colordeepGrey,
          ),
        ),
        automaticallyImplyLeading: false,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          "My wallet",
          style: headingStyle,
        ),
      ),
      body: const WalletBody(),
    );
  }
}
