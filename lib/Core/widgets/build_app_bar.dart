import 'package:credit_card_checkout_app/Core/utils/styles.dart';
import 'package:credit_card_checkout_app/Features/checkout/presentation/widgets/custom_app_bar_leading.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar({required final String title}) {
  return AppBar(
    toolbarHeight: 65,
    centerTitle: true,
    backgroundColor: Colors.transparent,
    shadowColor: Colors.transparent,
    title: Text(
      title,
      textAlign: TextAlign.center,
      style: Styles.inter500.copyWith(
        fontSize: 25,
      ),
    ),
    leading: CusomAppBarLeading(
      onTap: () {},
    ),
  );
}
