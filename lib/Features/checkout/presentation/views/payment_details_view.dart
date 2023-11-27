import 'package:credit_card_checkout_app/Features/checkout/presentation/widgets/payment_details_view_body.dart';
import 'package:flutter/material.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: PaymentDetailsViewBody(),
      ),
    );
  }
}
