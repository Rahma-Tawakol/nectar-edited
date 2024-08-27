import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nectar/core/extensions/num.dart';
import 'package:nectar/core/extensions/string.dart';
import 'package:nectar/core/utils/colors.dart';
import 'package:nectar/widgets/app_button.dart';
import 'package:nectar/widgets/app_text.dart';
import '../../core/route_utils/route_utils.dart';

class OrderAcceptedView extends StatelessWidget {
  const OrderAcceptedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Spacer(),
            Image.asset(
              'Group 6872'.assetPNG,
              height: 240.height,
              width: 269.width,
            ),
            SizedBox(height: 50.height),
            AppText(
              title: 'Your Order has been \naccepted',
              color: AppColors.black,
              fontSize: 28.font,
              height: 34.height,
              fontWeight: FontWeight.w600,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30.height),
            AppText(
              title:
                  'Your items have been placed and are on\n their way to being processed',
              color: AppColors.grey,
              fontSize: 16.font,
              height: 21.height,
              textAlign: TextAlign.center,
            ),
            Spacer(),
            AppButton(
              title: 'Track Order',
              tcolor: AppColors.white,
              bcolor: AppColors.primary,
              onTap: () {},
            ),
            SizedBox(height: 10.height),
            AppButton(
              title: 'Back to home',
              tcolor: AppColors.black,
              bcolor: AppColors.white,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
