import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethodsItem extends StatelessWidget {
  const PaymentMethodsItem({
    super.key,
    required this.paymentMethodIcon,
    required this.paddingValue,
  });

  final String paymentMethodIcon;
  final double paddingValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 70,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: Colors.black.withOpacity(0.5),
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: paddingValue),
        child: SvgPicture.asset(paymentMethodIcon),
      ),
    );
  }
}
