import 'package:flutter/material.dart';
import 'package:jadder/core/constants/colors.dart';
import 'package:jadder/core/widgets/custom_buttons_widget.dart';
import 'package:jadder/core/widgets/profile_item.dart';
import 'package:jadder/features/about/about.dart';
import 'package:jadder/features/lang/language.dart';
import 'package:jadder/features/profile/profile.dart';
import 'package:jadder/features/wallet/wallet.dart';

class ProfileBody extends StatefulWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  State<ProfileBody> createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: h * 0.02, horizontal: w * 0.02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((context) => const EditProfileScreen()),
              ),
            ),
            child: const ProfileCardItem(
                image: "asset/images/myaccount.png", title: "My account"),
          ),
          SizedBox(
            height: h * 0.04,
          ),
          const ProfileCardItem(
              image: "asset/images/employe.png", title: "Employee"),
          SizedBox(
            height: h * 0.04,
          ),
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const WalletScreen()),
            ),
            child: const ProfileCardItem(
                image: "asset/images/Group 84432.png", title: "wallet"),
          ),
          SizedBox(
            height: h * 0.04,
          ),
          InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) =>
                        const AboutScreen(title: "About app")))),
            child: const ProfileCardItem(
                image: "asset/images/info.png", title: "About app"),
          ),
          SizedBox(
            height: h * 0.04,
          ),
          InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) =>
                        const AboutScreen(title: "Terms and conditions")))),
            child: const ProfileCardItem(
                image: "asset/images/Group 98152.png",
                title: "Terms and conditions"),
          ),
          SizedBox(
            height: h * 0.04,
          ),
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((context) => const LanguageScreen()),
              ),
            ),
            child: const ProfileCardItem(
                image: "asset/images/Group 76802.png", title: "Language"),
          ),
          SizedBox(
            height: h * 0.04,
          ),
          const ProfileCardItem(
              image: "asset/images/callus.png", title: "Contact us"),
          SizedBox(
            height: h * 0.06,
          ),
          CustomGeneralButton(
            color: colorRed,
            onTap: () {},
            iconImage: "asset/images/logout.png",
            text: "Log out",
          )
        ],
      ),
    );
  }
}
