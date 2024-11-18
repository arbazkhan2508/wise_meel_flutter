import 'package:flutter/material.dart';
import 'package:wise_meal/components/banner_section.dart';
import 'package:wise_meal/components/category.dart';
import 'package:wise_meal/components/custom_scaffold.dart';
import 'package:wise_meal/components/discover_banner.dart';
import 'package:wise_meal/components/features.dart';
import 'package:wise_meal/components/footer.dart';
import 'package:wise_meal/components/home_bg.dart';
import 'package:wise_meal/components/ingredients.dart';
import 'package:wise_meal/components/joinus.dart';
import 'package:wise_meal/components/message.dart';
import 'package:wise_meal/components/popular_product.dart';
import 'package:wise_meal/components/testmonials.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'title',
      body: SingleChildScrollView(
        child: LayoutBuilder(
          builder: (context, constraints) {
            // Determine the height for the SizedBox based on screen width
            double sizedBoxHeight = constraints.maxWidth > 600 ? 800.0 : 400.0;
            return Column(
              children: [
                const HomeBgSection(),
                const PopularProductWidget(),
                const BannerSectionWidget(),
                FeaturesWidget(),
                SizedBox(
                  height: sizedBoxHeight,
                  child: Center(
                    child: Image.asset(
                      'assets/images/BannerBg.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const TestmonialsWidget(),
                const IngredientsWidget(),
                const CategoryWidget(),
                const DiscoverBannerWidget(),
                const MessageWidget(),
                const JoinusWidget(),
                const FooterWidget(),
              ],
            );
          },
        ),
      ),
    );
  }
}
