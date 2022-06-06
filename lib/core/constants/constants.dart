import 'package:flutter/material.dart';
import 'package:jadder/core/constants/colors.dart';

const kLogo = 'asset/images/logo.png';
const kLogo2 = 'asset/images/WhatsApp Image 2021-12-19 at 11.53.18 AM.png';
const kBgImage = 'assets/images/splash_bg.png';
const kHomeLayout = '/';

TextStyle headingStyle = TextStyle(
  fontFamily: 'URW DIN Arabic',
  fontSize: 16,
  color: colordeepGrey,
);

//////////////////////////////////////////////////

Widget logoImage() {
  return Center(
    child: Image.asset(kLogo),
  );
}
//////////////////////////////////////////////////

appbarNoTitle() {
  return AppBar(
    toolbarHeight: 0.0,
    elevation: 0.0,
  );
}
