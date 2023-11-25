import 'package:credit_card_checkout_app/Core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CusomAppBarLeading extends StatelessWidget {
  const CusomAppBarLeading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        Center(
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(24),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(AssetsData.arrowBack),
            ),
          ),
        ),
      ],
    );
  }
}
