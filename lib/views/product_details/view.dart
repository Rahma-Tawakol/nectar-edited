import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nectar/core/extensions/num.dart';
import 'package:nectar/core/extensions/string.dart';
import 'package:nectar/core/route_utils/route_utils.dart';
import 'package:nectar/widgets/app_app_bar.dart';
import '../../core/utils/colors.dart';
import '../../widgets/app_button.dart';
import '../../widgets/app_carousel.dart';
import '../../widgets/app_text.dart';
import '../cart/view.dart';
import '../explore/view.dart';

class ProductDetailsView extends StatefulWidget {
  const ProductDetailsView({Key? key}) : super(key: key);

  @override
  State<ProductDetailsView> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetailsView> {
  int counter = 1;
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        trailing: IconButton(
          icon: Image.asset(
            'vector'.assetPNG,
            width: 20.width,
            height: 20.height,
          ),
          onPressed: () => RouteUtils.push(context, ExploreView()),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Expanded(
            child: ListView(children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AppCarousel(
                    images: [
                      'assets/images/apple.png',
                      'assets/images/apple2.png',
                      'assets/images/apple3.png',
                    ],
                    height: 300.height,
                  ),
                  SizedBox(height: 30.height),
                  Row(
                    children: [
                      AppText(
                        title: 'Naturel Red Apple',
                        color: AppColors.black,
                        fontSize: 22.font,
                        height: 18.height,
                        fontWeight: FontWeight.w700,
                        textAlign: TextAlign.center,
                      ),
                      Spacer(),
                      Image.asset(
                        'heart'.assetPNG,
                        height: 32.height,
                        width: 32.width,
                      ),
                    ],
                  ),
                  SizedBox(height: 10.height),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: AppText(
                      title: '1kg, Price',
                      color: AppColors.darkGrey,
                      fontSize: 15.font,
                      height: 15.height,
                      fontWeight: FontWeight.w600,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 40.height),
                  Row(
                    children: [
                      _CounterButton(
                        icon: FontAwesomeIcons.minus,
                        iconColor: AppColors.grey,
                        onTap: counter <= 1
                            ? null
                            : () => setState(() => counter--),
                      ),
                      AppText(
                        title: '$counter',
                        fontSize: 16.font,
                        fontWeight: FontWeight.w600,
                        padding: EdgeInsets.symmetric(horizontal: 16.width),
                      ),
                      _CounterButton(
                        icon: FontAwesomeIcons.plus,
                        iconColor: AppColors.primary,
                        onTap: () => setState(() => counter++),
                      ),
                      Spacer(),
                      AppText(
                        title: "\$4.99",
                        fontSize: 17.font,
                        fontWeight: FontWeight.w700,
                        textAlign: TextAlign.end,
                      ),
                    ],
                  ),
                  Divider(
                    color: AppColors.grey.withOpacity(0.5),
                    height: 48.height,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isExpanded = !isExpanded;
                      });
                    },
                    child: Row(
                      children: [
                        AppText(
                          title: 'Product Detail',
                          color: AppColors.black,
                          fontSize: 16.font,
                          height: 18.height,
                          fontWeight: FontWeight.w700,
                          textAlign: TextAlign.center,
                        ),
                        Spacer(),
                        Icon(
                          isExpanded
                              ? Icons.keyboard_arrow_down
                              : Icons.keyboard_arrow_right,
                          color: AppColors.black,
                        ),
                      ],
                    ),
                  ),
                  AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    height: isExpanded ? null : 0,
                    child: isExpanded
                        ? Padding(
                            padding: EdgeInsets.only(top: 10.height),
                            child: AppText(
                              title:
                                  'Apples Are Nutritious. Apples May Be Good For Weight Loss. Apples May Be Good For Your Heart. As Part Of A Healthy And Varied Diet.',
                              color: AppColors.black,
                              fontSize: 14.font,
                              textAlign: TextAlign.left,
                            ),
                          )
                        : SizedBox.shrink(),
                  ),
                  Divider(
                    color: AppColors.grey.withOpacity(0.5),
                    height: 48.height,
                  ),
                  Row(
                    children: [
                      AppText(
                        title: 'Nutrition',
                        color: AppColors.black,
                        fontSize: 16.font,
                        height: 18.height,
                        fontWeight: FontWeight.w700,
                        textAlign: TextAlign.center,
                      ),
                      Spacer(),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: AppColors.black,
                      ),
                    ],
                  ),
                  Divider(
                    color: AppColors.grey.withOpacity(0.5),
                    height: 48.height,
                  ),
                  Row(
                    children: [
                      AppText(
                        title: 'Review',
                        color: AppColors.black,
                        fontSize: 16.font,
                        height: 18.height,
                        fontWeight: FontWeight.w700,
                        textAlign: TextAlign.center,
                      ),
                      Spacer(),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: AppColors.black,
                      ),
                    ],
                  ),
                  SizedBox(height: 24.height),
                  SafeArea(
                    child: AppButton(
                      title: 'Add All To Cart',
                      tcolor: AppColors.white,
                      bcolor: AppColors.primary,
                      onTap: () => RouteUtils.push(context, CartView()),
                    ),
                  )
                ],
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}

class _CounterButton extends StatelessWidget {
  const _CounterButton({
    Key? key,
    required this.icon,
    required this.iconColor,
    required this.onTap,
  }) : super(key: key);

  final IconData icon;
  final Color iconColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16.radius),
      onTap: onTap,
      child: Container(
        width: 40.width,
        height: 46.height,
        child: Icon(
          icon,
          color: iconColor,
          size: 20.height,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.radius),
          border: Border.all(
            color: AppColors.grey.withOpacity(0.4),
          ),
        ),
      ),
    );
  }
}
