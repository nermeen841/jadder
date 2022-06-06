import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jadder/business%20logic/appCubit/appcubit_cubit.dart';
import 'package:jadder/core/constants/constants.dart';
import 'package:jadder/core/widgets/home_card_item.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: h * 0.02, horizontal: w * 0.02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset("asset/images/Group 98155.png"),
              Text(
                "Get the best legal advice",
                style: headingStyle,
              ),
            ],
          ),
          SizedBox(
            height: h * 0.02,
          ),
          BlocConsumer<AppcubitCubit, AppcubitState>(
            listener: (context, state) {},
            builder: (context, state) {
              return GridView.builder(
                itemCount: 8,
                primary: false,
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 10,
                  childAspectRatio: 1.3,
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (contect, index) {
                  return InkWell(
                    onTap: () {
                      AppcubitCubit.get(context).homeSelection(index);
                      AppcubitCubit.get(context).selected = index;
                    },
                    child: HomeCardItem(
                        selected: index,
                        image: "asset/images/Group 87779.png",
                        text: "العمل التطوعي "),
                  );
                },
              );
            },
          ),
          SizedBox(
            height: h * 0.02,
          ),
        ],
      ),
    );
  }
}
