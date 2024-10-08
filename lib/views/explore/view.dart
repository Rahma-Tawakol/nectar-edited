import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nectar/core/extensions/num.dart';

import '../../widgets/app/category_card.dart';
import '../../widgets/app_app_bar.dart';
import '../../widgets/app_text_field.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: "Find Products",
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            AppTextField(
              leading: Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 20.height,
              ),
              hint: "Search",
            ),
            SizedBox(height: 20.height),
            Expanded(
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: CategoryCard.aspectRatio,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 12,
                ),
                //
                itemBuilder: (context, index) {
                  return CategoryCard(counter:index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
