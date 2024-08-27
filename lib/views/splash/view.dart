import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nectar/core/extensions/num.dart';
import 'package:nectar/core/extensions/string.dart';
import 'package:nectar/core/route_utils/route_utils.dart';
import 'package:nectar/core/utils/colors.dart';

import '../onboarding/view.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      RouteUtils.pushAndRemoveAll(context, OnboardingView());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Image.asset(
          'full_logo'.assetPNG,
          height: 68.height,
          width: 268.width,
        ),
      ),
    );
  }
}
