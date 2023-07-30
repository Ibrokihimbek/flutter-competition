import 'package:flutter/material.dart';
import 'package:flutter_competition/constants/image_constants.dart';
import 'package:flutter_competition/core/theme/colors/app_colors.dart';
import 'package:flutter_competition/core/utils/app_utils.dart';
import 'package:flutter_competition/core/widgets/custom_text_field.dart';
import 'package:flutter_competition/features/main/prsentation/widgets/category_item.dart';
import 'package:flutter_competition/features/main/prsentation/widgets/product_items.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

part 'package:flutter_competition/features/main/prsentation/pages/mixin/home_mixin.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with HomeMixin {
  @override
  void initState() {
    super.initState();
    initController();
  }

  @override
  void dispose() {
    super.dispose();
    disposeController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 130,
        title: Column(
          children: [
            Image.asset(
              PngImage.logo,
              scale: 6,
            ),
            AppUtils.kBoxHeight16,
            CustomTextField(
              controller: searchController,
              onChanged: (v) {},
              hintText: 'Search any Product..',
              contentPadding: AppUtils.kPaddingAll12,
            ),
          ],
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: AppUtils.kPaddingVertical16,
            sliver: SliverToBoxAdapter(
              child: SizedBox(
                height: 78,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: 6,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return CategoryItemWidget(
                      categoryName: 'man',
                      categoryImageUrl:
                          "https://i.pinimg.com/236x/dd/b2/b6/ddb2b636719b747c52d62c7ee8574fd1.jpg",
                      onTap: () {},
                    );
                  },
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: AppUtils.kPaddingHor16,
            sliver: SliverGrid.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2.5 / 3.5,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
              ),
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) {
                return ProductsItemsWidget(
                  onTap: () {},
                  productImageUrl: "https://i.pinimg.com/236x/dd/b2/b6/ddb2b636719b747c52d62c7ee8574fd1.jpg",
                  productName: '',
                  productDescription: '',
                  productPrice: '',
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
