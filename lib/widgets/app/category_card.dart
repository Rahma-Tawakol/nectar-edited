import 'package:flutter/material.dart';
import 'package:nectar/core/extensions/num.dart';
import 'package:nectar/core/route_utils/route_utils.dart';
import 'package:nectar/widgets/app_text.dart';

import '../../core/utils/colors.dart';
import '../../views/category_details/view.dart';

class CategoryCard extends StatelessWidget {
  final int counter;

  CategoryCard({Key? key,  required this.counter}) : super(key: key);

  static double get height => 200.height;
  static double get width => 180.width;
  static double get aspectRatio => width / height;

  List<String> images = [
    'https://static.vecteezy.com/system/resources/thumbnails/025/277/368/small/vegetables-basket-png.png',
    'assets/images/Fruits.png',
    'assets/images/meat.png',
    'assets/images/dairy.png',
  ];

  List<String> titles = [
    'Vegetables',
    'Fruits',
    'Meat & Seafood',
    'Dairy & Eggs',
  ];

  @override
  Widget build(BuildContext context) {

    String selectedImage = '';
    String Title = '';

    if (counter < images.length) {
      selectedImage = images[counter];
      Title = titles[counter];
    } else {}

    return InkWell(
      onTap: () => RouteUtils.push(context, CategoryDetailsView()),
      child: Container(
        height: height,
        width: width,
        padding: EdgeInsets.symmetric(
          horizontal: 32.width,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              selectedImage,
              height: 92.height,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 8.height),
            AppText(
              title: Title,
              fontWeight: FontWeight.w600,
              fontSize: 16.font,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.primary.withOpacity(0.2),
          border: Border.all(color: AppColors.primary),
        ),
      ),
    );
  }
}
