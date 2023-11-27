import 'package:credit_card_checkout_app/Core/utils/styles.dart';
import 'package:credit_card_checkout_app/Features/checkout/presentation/widgets/custom_app_bar_leading.dart';
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
        appBar: AppBar(
          toolbarHeight: 65,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          title: Text(
            "My Cart",
            textAlign: TextAlign.center,
            style: Styles.inter500.copyWith(
              fontSize: 25,
            ),
          ),
          leading: CusomAppBarLeading(
            onTap: () {},
          ),
        ),
        body: const MyCartViewBody(),
      ),
    );
  }
}
