import 'package:credit_card_checkout_app/Core/utils/styles.dart';
import 'package:credit_card_checkout_app/constants.dart';
import 'package:flutter/material.dart';

class CustomMainButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const CustomMainButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        backgroundColor: kPrimaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(19),
        ),
      ),
      child: Container(
        width: 367,
        height: 67,
        alignment: Alignment.center,
        child: Text(
          text,
          style: Styles.inter600.copyWith(
            fontSize: 21,
          ),
        ),
      ),
    );
  }
}
