import 'package:credit_card_checkout_app/Core/utils/assets.dart';
import 'package:credit_card_checkout_app/Core/utils/generate_random_small_carts.dart';
import 'package:credit_card_checkout_app/Features/checkout/presentation/widgets/calculating_price_section.dart';
import 'package:flutter/material.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              Center(
                child: Stack(
                  children: [
                    SizedBox(
                      height: 450,
                      child: Image.asset(AssetsData.cartImage),
                    ),
                    ...generateRandomSmallCarts(
                        10), // adjust this value to change the number of small cart images
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const CalculatingPriceSection(),
            ],
          ),
        ),
      ],
    );
  }
}
