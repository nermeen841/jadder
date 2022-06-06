import 'package:flutter/material.dart';
import 'package:jadder/features/orders/cmponnent/body.dart';

import '../../core/constants/constants.dart';

class MyOrdersScreen extends StatefulWidget {
  const MyOrdersScreen({Key? key}) : super(key: key);

  @override
  State<MyOrdersScreen> createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "My Orders",
          style: headingStyle,
        ),
      ),
      body: const OrdersBody(),
    );
  }
}
