import 'package:credit_card_checkout_app/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
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
    );
  }
}
