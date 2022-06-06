import 'package:flutter/material.dart';
import 'package:jadder/core/widgets/order_item.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/constants.dart';

class OrdersBody extends StatefulWidget {
  const OrdersBody({Key? key}) : super(key: key);

  @override
  State<OrdersBody> createState() => _OrdersBodyState();
}

class _OrdersBodyState extends State<OrdersBody> {
  int currentIndex = 0;
  List<String> text = ["waiting", "proccessing", "done"];

  late PageController pageController;
  @override
  void initState() {
    pageController = PageController(initialPage: currentIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return ListView(
      padding: EdgeInsets.symmetric(vertical: h * 0.02, horizontal: w * 0.02),
      primary: true,
      shrinkWrap: true,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(text.length,
              (index) => buildOrderStatus(index: index, h: h, w: w)),
        ),
        SizedBox(
          height: h * 0.03,
        ),
        SizedBox(
          width: w,
          height: h,
          child: Expanded(
            child: PageView.builder(
              itemCount: text.length,
              physics: const NeverScrollableScrollPhysics(),
              controller: pageController,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return ListView.separated(
                    primary: true,
                    padding: EdgeInsets.only(bottom: h * 0.06),
                    shrinkWrap: true,
                    itemBuilder: (context, index) => const OrderItem(
                        star2: true,
                        stars: false,
                        image:
                            "https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg?t=st=1654505109~exp=1654505709~hmac=c900df78283422aec0ce091154f5ff0d6098aff676d8529985829a92b1dedb31&w=360",
                        orderNum: "1132432",
                        name: "heba hassan"),
                    separatorBuilder: (context, index) => const Divider(),
                    itemCount: 10);
              },
            ),
          ),
        ),
      ],
    );
  }

  AnimatedContainer buildOrderStatus(
      {required int index, required double h, required double w}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      color: Colors.transparent,
      padding: EdgeInsets.symmetric(horizontal: w * 0.01),
      child: InkWell(
        onTap: () {
          pageController.animateToPage(index,
              duration: const Duration(microseconds: 500),
              curve: Curves.fastOutSlowIn);
        },
        child: Container(
          width: w * 0.3,
          height: h * 0.06,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(w * 0.015),
              color: currentIndex == index ? kMainColor : colorLightGrey),
          child: Center(
            child: Text(
              text[index],
              style: headingStyle.copyWith(
                color: currentIndex == index ? Colors.white : colordeepGrey,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
