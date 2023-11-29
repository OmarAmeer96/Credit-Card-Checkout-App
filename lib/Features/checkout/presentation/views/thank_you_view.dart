import 'package:credit_card_checkout_app/Core/widgets/build_custom_ap_bar.dart';
import 'package:credit_card_checkout_app/Features/checkout/presentation/widgets/thank_you_view_body.dart';
import 'package:flutter/material.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildCustomAppBar(title: ''),
        body: const ThankYouViewBody(),
      ),
    );
  }
}
