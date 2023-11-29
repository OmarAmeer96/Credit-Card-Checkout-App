import 'package:credit_card_checkout_app/Core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomApBarLeadingItem extends StatelessWidget {
  const CustomApBarLeadingItem({
    super.key,
    required this.onTap,
  });

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(24),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SvgPicture.asset(AssetsData.arrowBack),
      ),
    );
  }
}
