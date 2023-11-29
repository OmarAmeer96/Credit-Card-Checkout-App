import 'package:credit_card_checkout_app/Features/checkout/presentation/widgets/thank_you_view_body.dart';
import 'package:flutter/material.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: ThankYouViewBody(),
      ),
    );
  }
}
