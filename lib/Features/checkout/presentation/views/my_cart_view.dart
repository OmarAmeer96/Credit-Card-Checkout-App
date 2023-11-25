import 'package:credit_card_checkout_app/Features/checkout/presentation/widgets/my_cart_view_body.dart';
import 'package:flutter/material.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: MyCartViewBody(),
      ),
    );
  }
}
