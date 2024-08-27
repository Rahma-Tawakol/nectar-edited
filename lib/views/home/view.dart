import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nectar/core/extensions/num.dart';
import 'package:nectar/core/extensions/string.dart';
import 'package:nectar/core/utils/colors.dart';
import 'package:nectar/widgets/app_text.dart';
import 'package:nectar/widgets/app_text_field.dart';

import '../../widgets/app/product_card.dart';
import '../../widgets/app/section_title.dart';
import '../../widgets/app_carousel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'logo'.assetPNG,
          height: 32.height,
          width: 32.width,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  FontAwesomeIcons.locationPin,
                  color: AppColors.darkGrey,
                ),
                SizedBox(width: 8.width),
                AppText(
                  title: 'Mansoura, Egypt',
                  fontSize: 18.font,
                  fontWeight: FontWeight.w600,
                  color: AppColors.darkGrey,
                ),
              ],
            ),
            SizedBox(height: 20.height),
            AppTextField(
              leading: Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 20.height,
              ),
              hint: "Search",
            ),
            SizedBox(height: 20.height),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  AppCarousel(
                    images: [
                      'https://cdn.britannica.com/17/196817-159-9E487F15/vegetables.jpg',
                      'https://cdn.britannica.com/39/187439-050-35BA4DCA/Broccoli-florets.jpg',
                      'https://www.healthyeating.org/images/default-source/home-0.0/nutrition-topics-2.0/general-nutrition-wellness/2-2-2-2foodgroups_vegetables_detailfeature.jpg?sfvrsn=226f1bc7_6'
                    ],
                  ),
                  SizedBox(height: 20.height),
                  SectionTitle(
                    title: 'Exclusive Offers',
                  ),
                  SizedBox(height: 20.height),
                  SizedBox(
                    height: ProductCard.height,
                    child: ListView.separated(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return ProductCard();
                      },
                      separatorBuilder: (context, index) => SizedBox(width: 16.width),
                    ),
                  ),
                  SizedBox(height: 20.height),
                  SectionTitle(
                    title: 'Best Selling',
                  ),
                  SizedBox(height: 20.height),
                  SizedBox(
                    height: ProductCard.height,
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return ProductCard();
                      },
                      separatorBuilder: (context, index) => SizedBox(width: 16.width),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
