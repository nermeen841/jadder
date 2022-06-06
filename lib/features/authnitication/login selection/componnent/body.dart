import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jadder/business%20logic/appCubit/appcubit_cubit.dart';
import 'package:jadder/core/constants/constants.dart';
import 'package:jadder/features/authnitication/login%20selection/componnent/selection_card.dart';
import 'package:jadder/features/authnitication/service%20requester/sign%20up/sign_up.dart';

class LoginSelectionBody extends StatefulWidget {
  const LoginSelectionBody({Key? key}) : super(key: key);

  @override
  State<LoginSelectionBody> createState() => _LoginSelectionBodyState();
}

class _LoginSelectionBodyState extends State<LoginSelectionBody> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: h * 0.07),
      child: BlocConsumer<AppcubitCubit, AppcubitState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              logoImage(),
              SizedBox(
                height: h * 0.05,
              ),
              Text(
                "Register Type",
                style: headingStyle.copyWith(
                    fontWeight: FontWeight.bold, fontSize: w * 0.05),
              ),
              SizedBox(
                height: h * 0.05,
              ),
              InkWell(
                onTap: () {
                  AppcubitCubit.get(context).selectionCard1();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpScreen()));
                },
                child: SelectionCard(
                    image: "asset/images/noun_User_3202851.png",
                    text: "As Service Requester",
                    isSelected: AppcubitCubit.get(context).selectedCard1),
              ),
              SizedBox(
                height: h * 0.05,
              ),
              InkWell(
                onTap: () {
                  AppcubitCubit.get(context).selectionCard2();
                },
                child: SelectionCard(
                    image: "asset/images/noun_freelancer_1861058.png",
                    text: "As Service Provider",
                    isSelected: AppcubitCubit.get(context).selectedCard2),
              ),
              SizedBox(
                height: h * 0.05,
              ),
            ],
          );
        },
      ),
    );
  }
}
