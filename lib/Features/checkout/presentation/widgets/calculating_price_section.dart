import 'package:credit_card_checkout_app/Core/utils/app_router.dart';
import 'package:credit_card_checkout_app/Core/utils/styles.dart';
import 'package:credit_card_checkout_app/Features/checkout/presentation/widgets/custom_main_button.dart';
import 'package:credit_card_checkout_app/Features/checkout/presentation/widgets/order_and_price_row.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CalculatingPriceSection extends StatelessWidget {
  const CalculatingPriceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const OrderAndPriceRow(
          order: "Order Subtotal",
          price: "\$42.97",
        ),
        const SizedBox(
          height: 3,
        ),
        const OrderAndPriceRow(
          order: "Discount",
          price: "\$0",
        ),
        const SizedBox(
          height: 3,
        ),
        const OrderAndPriceRow(
          order: "Shipping",
          price: "\$8",
        ),
        const SizedBox(
          height: 17,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          height: 3,
          decoration: BoxDecoration(
            color: const Color(0xFFC6C6C6),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const Row(
          children: [
            Text(
              "Total",
              textAlign: TextAlign.start,
              style: Styles.inter600,
            ),
            Spacer(),
            Text(
              "\$50.97",
              textAlign: TextAlign.start,
              style: Styles.inter600,
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        CustomMainButton(
          text: "Complete Payment",
          onPressed: () {
            GoRouter.of(context).push(
              AppRouter.kPaymentDetailsView,
            );
          },
        ),
      ],
    );
  }
}
