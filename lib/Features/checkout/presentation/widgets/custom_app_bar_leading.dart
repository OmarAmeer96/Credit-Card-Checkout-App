import 'package:credit_card_checkout_app/Features/checkout/presentation/widgets/custom_app_bar_leading_item.dart';
import 'package:flutter/material.dart';

class CusomAppBarLeading extends StatelessWidget {
  const CusomAppBarLeading({
    super.key,
    required this.onTap,
  });

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        Center(
          child: CustomApBarLeadingItem(onTap: onTap),
        ),
      ],
    );
  }
}
