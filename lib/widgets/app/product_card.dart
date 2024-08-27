import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nectar/core/extensions/num.dart';
import 'package:nectar/core/utils/colors.dart';
import 'package:nectar/widgets/app_text.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  static double get height => 260.height;
  static double get width => 180.width;
  static double get aspectRatio => width / height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.symmetric(
        horizontal: 16.width,
        vertical: 16.height,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image.network(
              'https://static.vecteezy.com/system/resources/previews/029/200/269/non_2x/banana-transparent-background-free-png.png',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 8.height),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  title: 'Banana',
                  fontWeight: FontWeight.w600,
                  fontSize: 16.font,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 4.height),
                AppText(
                  title: '1kg, Priceg',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  color: AppColors.darkGrey,
                  fontSize: 14.font,
                ),
                Spacer(),
                Row(
                  children: [
                    Expanded(
                      child: AppText(
                        title: '\$24.99',
                        fontSize: 18.font,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 12,
                      ),
                      child: Icon(
                        FontAwesomeIcons.plus,
                        size: 20,
                        color: AppColors.white,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.grey,
        ),
        borderRadius: BorderRadius.circular(16.radius),
      ),
    );
  }
}
