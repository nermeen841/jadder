import 'package:flutter/material.dart';

import '../../core/constants/colors.dart';
import '../../core/constants/constants.dart';
import 'cmponnent/body.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

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
          "My account",
          style: headingStyle,
        ),
      ),
      body: const EditProfileBody(),
    );
  }
}
