import 'package:credit_card_checkout_app/Core/utils/assets.dart';
import 'package:credit_card_checkout_app/Core/utils/responsive.dart';
import 'package:credit_card_checkout_app/Features/checkout/presentation/widgets/payment_methods_item.dart';
import 'package:flutter/material.dart';

class PaymentMethodsListView extends StatefulWidget {
  const PaymentMethodsListView({
    super.key,
  });

  @override
  State<PaymentMethodsListView> createState() => _PaymentMethodsListViewState();
}

class _PaymentMethodsListViewState extends State<PaymentMethodsListView> {
  final Map<String, double> paymentMethodsIcons = const {
    AssetsData.paymentMethod1: 16.5,
    AssetsData.paymentMethod2: 23.5,
    AssetsData.paymentMethod3: 20.5,
  };

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: paymentMethodsIcons.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          String key = paymentMethodsIcons.keys.elementAt(index);
          return GestureDetector(
            onTap: () {
              activeIndex = index;
              setState(() {});
            },
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Responsive.screenWidth(context) * 0.015),
              child: PaymentMethodsItem(
                paymentMethodIcon: key,
                paddingValue: paymentMethodsIcons[key]!,
                isActive: activeIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
