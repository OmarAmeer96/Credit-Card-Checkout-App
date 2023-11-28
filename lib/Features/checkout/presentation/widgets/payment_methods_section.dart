import 'package:credit_card_checkout_app/Core/utils/assets.dart';
import 'package:credit_card_checkout_app/Features/checkout/presentation/widgets/payment_methods_item.dart';
import 'package:flutter/material.dart';

class PaymentMethodsSection extends StatelessWidget {
  const PaymentMethodsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PaymentMethodsItem(
          paymentMethodIcon: AssetsData.paymentMethod1,
          paddingValue: 16.5,
          isActive: false,
        ),
        PaymentMethodsItem(
          paymentMethodIcon: AssetsData.paymentMethod2,
          paddingValue: 23.5,
          isActive: false,
        ),
        PaymentMethodsItem(
          paymentMethodIcon: AssetsData.paymentMethod3,
          paddingValue: 20.5,
          isActive: false,
        ),
      ],
    );
  }
}
