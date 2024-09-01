import 'package:flutter/material.dart';
import 'package:nectar/core/extensions/num.dart';
import 'package:nectar/core/utils/colors.dart';
import 'package:nectar/widgets/app_text.dart';

class FavouriteProductCard extends StatefulWidget {
  final int counter;

  const FavouriteProductCard({Key? key, required this.counter})
      : super(key: key);

  @override
  State<FavouriteProductCard> createState() => _FavouriteProductCardState();
}

class _FavouriteProductCardState extends State<FavouriteProductCard> {
  List<String> images = [
    'assets/images/sprite.png',
    'assets/images/diet_coke.png',
    'assets/images/juice.png',
    'assets/images/cola.png',
    'assets/images/pepsi.png',
  ];

  List<String> titles = [
    'Sprite Can',
    'Diet Coke',
    'Apple & Grape Juice',
    'Coca Cola Can',
    'Pepsi Can',
  ];

  List<String> descriptions = [
    '325ml, Price',
    '355ml, Price',
    '2l, Price',
    '325ml, Price',
    '330ml, Price',
  ];

  List<String> prices = [
    '\$1.50',
    '\$1.99',
    '\$15.50',
    '\$4.99',
    '\$4.99',
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

    return Row(
      children: [
        Image.asset(
          selectedImage,
          height: 80.height,
          width: 42.width,
        ),
        SizedBox(width: 20.width),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: AppText(
                      title: Title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4.height),
              Row(
                children: [
                  AppText(
                    title: Description,
                    color: AppColors.darkGrey,
                  ),
                  Expanded(
                    child: AppText(
                      title: Price,
                      fontSize: 16.font,
                      fontWeight: FontWeight.w600,
                      textAlign: TextAlign.end,
                    ),
                  ),
                  SizedBox(width: 12.width),
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: AppColors.black,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
