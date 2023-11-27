import 'package:credit_card_checkout_app/Core/utils/assets.dart';
import 'package:credit_card_checkout_app/Core/utils/generate_random_small_carts.dart';
import 'package:credit_card_checkout_app/Features/checkout/presentation/widgets/calculating_price_section.dart';
import 'package:flutter/material.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const NeverScrollableScrollPhysics(),
      slivers: <Widget>[
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              10),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 15),
                child: CalculatingPriceSection(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
