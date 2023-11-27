import 'package:credit_card_checkout_app/Core/widgets/build_app_bar.dart';
import 'package:credit_card_checkout_app/Features/checkout/presentation/widgets/my_cart_view_body.dart';
import 'package:flutter/material.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  // THERE ARE SOMETHINGS I USED IN THE <"UTILS"> FOLDER IN THE <<"CORE">> FLDER.
  // (IF U WANT TO RE-USE THIS CODE, DON'T FOGOT THEM).

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar(title: 'My Cart'),
        body: const MyCartViewBody(),
      ),
    );
  }
}
