import 'package:credit_card_checkout_app/Core/utils/styles.dart';
import 'package:credit_card_checkout_app/Features/checkout/presentation/widgets/custom_app_bar_leading.dart';
import 'package:credit_card_checkout_app/Features/checkout/presentation/widgets/payment_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 65,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          title: Text(
            "Payment Details",
            textAlign: TextAlign.center,
            style: Styles.inter500.copyWith(
              fontSize: 25,
            ),
          ),
          leading: CusomAppBarLeading(
            onTap: () {
              GoRouter.of(context).pop();
            },
          ),
        ),
        body: const PaymentDetailsViewBody(),
      ),
    );
  }
}
