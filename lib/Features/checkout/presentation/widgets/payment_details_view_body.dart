import 'package:credit_card_checkout_app/Features/checkout/presentation/widgets/custom_credit_card.dart';
import 'package:credit_card_checkout_app/Features/checkout/presentation/widgets/custom_main_button.dart';
import 'package:credit_card_checkout_app/Features/checkout/presentation/widgets/payment_methods_list_view.dart';
import 'package:flutter/material.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 8,
              ),
              PaymentMethodsSection(),
              SizedBox(
                height: 20,
              ),
              CustomCreditCard(),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
          child: CustomMainButton(
            text: "Pay",
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
