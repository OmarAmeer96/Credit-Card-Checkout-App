import 'dart:developer';

import 'package:credit_card_checkout_app/Core/utils/app_router.dart';
import 'package:credit_card_checkout_app/Features/checkout/presentation/widgets/custom_credit_card.dart';
import 'package:credit_card_checkout_app/Features/checkout/presentation/widgets/custom_main_button.dart';
import 'package:credit_card_checkout_app/Features/checkout/presentation/widgets/payment_methods_list_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

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
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                CustomCreditCard(
                  formKey: formKey,
                  autovalidateMode: autovalidateMode,
                ),
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
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    log('Payment Succesful');
                    GoRouter.of(context).push(AppRouter.kThankYouView);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
