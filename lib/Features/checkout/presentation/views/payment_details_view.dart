import 'package:credit_card_checkout_app/Core/widgets/build_app_bar.dart';
import 'package:credit_card_checkout_app/Features/checkout/presentation/widgets/payment_details_view_body.dart';
import 'package:flutter/material.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildAppBar(title: 'Payment Details'),
        body: const PaymentDetailsViewBody(),
      ),
    );
  }
}
