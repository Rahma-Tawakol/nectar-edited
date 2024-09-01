import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nectar/core/extensions/num.dart';
import 'package:nectar/core/utils/colors.dart';
import 'package:nectar/widgets/app_text.dart';

import '../../core/route_utils/route_utils.dart';
import '../../views/product_details/view.dart';

class FProductCard extends StatefulWidget {
  final int counter;

  FProductCard({Key? key, required this.counter}) : super(key: key);

  static double get height => 260.height;
  static double get width => 180.width;
  static double get aspectRatio => width / height;

  @override
  State<FProductCard> createState() => _FProductCardState();
}

class _FProductCardState extends State<FProductCard> {
  List<String> images = [
    'assets/images/bananas.png',
    'assets/images/orange.png',
    'assets/images/apple.png',
  ];

  List<String> titles = [
    'Bananas',
    'Orange',
    'Apple',
  ];

  List<String> descriptions = [
    '1kg, Price',
    '1kg, Price',
    'Each, Price',

  ];

  List<String> prices = [
    '\$1.86',
    '\$4.50',
    '\$0.69',
  ];

  @override
  Widget build(BuildContext context) {
    String selectedImage = '';
    String Title = '';
    String Description = '';
    String Price = '';

    if (widget.counter < images.length) {
      selectedImage = images[widget.counter];
      Title = titles[widget.counter];
      Description = descriptions[widget.counter];
      Price = prices[widget.counter];
    } else {}

    return Container(
      height: FProductCard.height,
      width: FProductCard.width,
      padding: EdgeInsets.symmetric(
        horizontal: 16.width,
        vertical: 16.height,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image.network(
              selectedImage,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 8.height),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () => RouteUtils.push(context, ProductDetailsView()),
                  child: AppText(
                    title: Title,
                    fontWeight: FontWeight.w600,
                    fontSize: 16.font,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(height: 4.height),
                AppText(
                  title: Description,
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
                        title: Price,
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
