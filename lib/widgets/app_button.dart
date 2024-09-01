import 'package:flutter/material.dart';
import 'package:nectar/core/extensions/num.dart';
import 'app_text.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    required this.title,
    required this.tcolor,
    required this.bcolor,
    this.onTap,
    this.margin = EdgeInsets.zero,
  }) : super(key: key);

  final String title;
  final Color tcolor;
  final Color bcolor;
  final void Function()? onTap;
  final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 56.height,
          alignment: Alignment.center,
          child: AppText(
            title: title,
            color: tcolor,
            fontWeight: FontWeight.w700,
          ),
          decoration: BoxDecoration(
            color: bcolor,
            borderRadius: BorderRadius.circular(16.radius),
          ),
        ),
      ),
    );
  }
}
