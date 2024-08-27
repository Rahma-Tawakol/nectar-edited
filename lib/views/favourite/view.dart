import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nectar/core/extensions/build_context.dart';
import 'package:nectar/core/extensions/num.dart';
import 'package:nectar/core/route_utils/route_utils.dart';
import 'package:nectar/core/utils/colors.dart';
import 'package:nectar/widgets/app_button.dart';
import 'package:nectar/widgets/app_text.dart';

import '../../widgets/app/favourite_product_card.dart';
import '../../widgets/app_app_bar.dart';
import '../cart/view.dart';

class FavouriteView extends StatelessWidget {
  const FavouriteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: "Favourite",
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return FavouriteProductCard(counter: index);
                },
                separatorBuilder: (context, index) => Divider(
                  color: AppColors.grey.withOpacity(0.5),
                  height: 48.height,
                ),
              ),
            ),
            SizedBox(height: 20.height),
            Stack(
              children: [
                AppButton(
                  title: 'Add All To Cart',
                  tcolor: AppColors.white,
                  bcolor: AppColors.primary,
                  onTap: () => RouteUtils.push(context, CartView()),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
