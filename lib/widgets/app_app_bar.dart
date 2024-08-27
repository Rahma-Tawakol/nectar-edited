import 'package:flutter/material.dart';
import 'package:nectar/core/extensions/num.dart';
import 'package:nectar/widgets/app_text.dart';

import '../core/utils/colors.dart';

class AppAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AppAppBar({
    Key? key,
    this.title,
    this.trailing,
    this.leading,
  }) : super(key: key);

  final String? title;
  final Widget? trailing;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title == null
          ? SizedBox()
          : Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              AppText(
                title: title!,
                fontSize: 20.font,
                fontWeight: FontWeight.w600,
              ),
            ]),
      leading: leading,
      actions: [
        if (trailing != null) trailing!,
      ],
      iconTheme: IconThemeData(
        size: 20,
        color: AppColors.black,
      ),
      actionsIconTheme: IconThemeData(
        size: 20,
        color: AppColors.black,
      ),
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
