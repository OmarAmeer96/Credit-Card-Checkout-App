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
          alignment: Alignment.center,
          clipBehavior: Clip.none,
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
              left: -20,
              child: const CircleAvatar(
                backgroundColor: Colors.white,
              ),
            ),
            Positioned(
              bottom: Responsive.screenHeight(context) * 0.2,
              right: -20,
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
            const Positioned(
              top: -40,
              child: CircleAvatar(
                backgroundColor: Color(0xFFD9D9D9),
                radius: 50,
              ),
            ),
            Positioned(
              top: -30,
              child: CircleAvatar(
                backgroundColor: const Color(0xFF34A853),
                radius: 40,
                child: Center(
                  child: SvgPicture.asset(
                    AssetsData.trueCheckVector,
                    width: 50,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
