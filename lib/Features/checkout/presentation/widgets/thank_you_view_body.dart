import 'package:credit_card_checkout_app/Features/checkout/presentation/widgets/custom_app_bar_leading_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 12),
          child: CustomApBarLeadingItem(
            onTap: () {
              GoRouter.of(context).pop();
            },
          ),
        ),
      ],
    );
  }
}
