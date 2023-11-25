import 'dart:math';

import 'package:credit_card_checkout_app/Core/utils/assets.dart';
import 'package:flutter/material.dart';

List<String> images = [AssetsData.image1, AssetsData.image2, AssetsData.image3];

List<Widget> generateRandomSmallCarts(int count) {
  List<Widget> list = [];
  for (int i = 0; i < 4; i++) {
    String image = images[Random().nextInt(3)]; // randomly select an image
    list.add(
      Positioned(
        right: Random().nextDouble() * 300,
        top: Random().nextDouble() *
            300, // adjust these values to fit your container
        left: Random().nextDouble() *
            200, // adjust these values to fit your container
        child: SizedBox(
          height: 80, // adjust this value to change the size of the cart image
          child: Image.asset(image),
        ),
      ),
    );
  }
  return list;
}