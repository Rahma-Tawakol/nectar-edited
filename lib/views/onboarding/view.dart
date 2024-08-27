import 'package:flutter/material.dart';
import 'package:nectar/core/extensions/num.dart';
import 'package:nectar/core/extensions/string.dart';
import 'package:nectar/core/route_utils/route_utils.dart';
import 'package:nectar/core/utils/colors.dart';
import 'package:nectar/widgets/app_button.dart';
import 'package:nectar/widgets/app_text.dart';

import '../nav_bar/view.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'onboarding_bg'.assetPNG,
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                'white_logo'.assetPNG,
                height: 48.height,
                width: 48.width,
              ),
              SizedBox(height: 32.height),
              AppText(
                title: 'Welcome\nto our store',
                color: AppColors.white,
                fontSize: 48.font,
                height: 64.height,
                fontWeight: FontWeight.w600,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.height),
              AppText(
                title: 'Ger your groceries in as fast as one hour',
                color: AppColors.grey,
                textAlign: TextAlign.center,
                fontSize: 16.font,
              ),
              AppButton(
                title: 'Get Started',
                tcolor: AppColors.white,
                bcolor: AppColors.primary,
                onTap: () => RouteUtils.pushAndRemoveAll(context, NavBarView()),
                margin: EdgeInsets.symmetric(
                  horizontal: 16.width,
                  vertical: 40.height,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
