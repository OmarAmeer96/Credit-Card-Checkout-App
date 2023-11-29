import 'package:credit_card_checkout_app/Features/checkout/presentation/widgets/custom_credit_card.dart';
import 'package:credit_card_checkout_app/Features/checkout/presentation/widgets/custom_main_button.dart';
import 'package:credit_card_checkout_app/Features/checkout/presentation/widgets/payment_methods_list_view.dart';
import 'package:flutter/material.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 8,
                ),
                PaymentMethodsListView(),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                CustomCreditCard(),
              ],
            ),
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CustomMainButton(
                text: "Pay",
                onPressed: () {},
              ),
            ),
          ),
        ),
      ],
    );
  }
}
