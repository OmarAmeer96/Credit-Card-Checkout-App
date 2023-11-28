import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethodsItem extends StatelessWidget {
  const PaymentMethodsItem({
    super.key,
    required this.paymentMethodIcon,
    required this.paddingValue,
    this.isActive = false,
  });

  final String paymentMethodIcon;
  final double paddingValue;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: 110,
      height: 70,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1.50,
            color: isActive ? const Color(0xFF34A853) : const Color(0xff7f7f7f),
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        shadows: [
          BoxShadow(
            color: isActive ? const Color(0xFF34A853) : Colors.transparent,
            blurRadius: 4,
            offset: const Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
      child: Container(
        width: 110,
        height: 70,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: paddingValue),
          child: SvgPicture.asset(paymentMethodIcon),
        ),
      ),
    );
  }
}
