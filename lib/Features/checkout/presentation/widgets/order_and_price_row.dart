import 'package:credit_card_checkout_app/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class OrderAndPriceRow extends StatelessWidget {
  const OrderAndPriceRow({
    super.key,
    required this.order,
    required this.price,
  });

  final String order;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          order,
          textAlign: TextAlign.start,
          style: Styles.inter400,
        ),
        const Spacer(),
        Text(
          price,
          textAlign: TextAlign.start,
          style: Styles.inter500.copyWith(fontSize: 18),
        ),
      ],
    );
  }
}
