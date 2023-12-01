import 'package:credit_card_checkout_app/Core/utils/assets.dart';
import 'package:credit_card_checkout_app/Core/utils/responsive.dart';
import 'package:credit_card_checkout_app/Features/checkout/presentation/widgets/custom_app_bar_leading_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 10, top: 12),
            child: CustomApBarLeadingItem(
              onTap: () {
                GoRouter.of(context).pop();
              },
            ),
          ),
        ),
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: Responsive.screenWidth(context) * 0.88,
                height: Responsive.screenHeight(context) * 0.84,
                decoration: ShapeDecoration(
                  color: const Color(0xFFD9D9D9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: Responsive.screenHeight(context) * 0.2,
              left: Responsive.screenWidth(context) * -0.05,
              child: const CircleAvatar(
                backgroundColor: Colors.white,
              ),
            ),
            Positioned(
              bottom: Responsive.screenHeight(context) * 0.2,
              right: Responsive.screenWidth(context) * -0.05,
              child: const CircleAvatar(
                backgroundColor: Colors.white,
              ),
            ),
            Positioned(
              bottom: Responsive.screenHeight(context) * 0.22,
              child: SvgPicture.asset(
                AssetsData.dashedLine,
                width: Responsive.screenWidth(context) * 0.765,
              ),
            ),
            Positioned(
              top: Responsive.screenHeight(context) * -0.045,
              child: Container(
                width: 100,
                height: 100,
                decoration: const ShapeDecoration(
                  color: Color(0xFFD9D9D9),
                  shape: OvalBorder(),
                ),
              ),
            ),
            Positioned(
              top: Responsive.screenHeight(context) * -0.0338,
              child: Container(
                padding: const EdgeInsets.all(15),
                width: 80,
                height: 80,
                decoration: const ShapeDecoration(
                  color: Color(0xFF34A853),
                  shape: OvalBorder(),
                ),
                child: Center(
                  child: SvgPicture.asset(AssetsData.trueCheckVector),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
