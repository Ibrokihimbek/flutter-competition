import 'package:flutter/material.dart';
import 'package:flutter_competition/constants/image_constants.dart';
import 'package:flutter_competition/core/theme/colors/app_colors.dart';
import 'package:flutter_competition/core/utils/app_utils.dart';
import 'package:flutter_competition/core/widgets/custom_text_field.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

part 'package:flutter_competition/features/main/prsentation/pages/home/pages/mixin/home_mixin.dart';

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
        title: Image.asset(
          PngImage.logo,
          scale: 6,
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, bottom: 0, top: 12),
              child: CustomTextField(
                controller: searchController,
                onChanged: (v) {},
                hintText: 'Search any Product..',
                contentPadding: AppUtils.kPaddingAll8,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 78,
              width: double.infinity,
              child: ListView.builder(
                itemCount: 6,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: Column(
                      children: [
                        Container(
                          width: 56,
                          height: 56,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(
                                  "https://i.pinimg.com/236x/dd/b2/b6/ddb2b636719b747c52d62c7ee8574fd1.jpg",
                                ),
                                fit: BoxFit.cover),
                          ),
                        ),
                        const Text(
                          "mens",
                          style: TextStyle(fontWeight: FontWeight.w300),
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          SliverGrid.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2.5 / 3.5,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
            ),
            itemCount: 6,
            itemBuilder: (BuildContext context, int index) {
              return ZoomTapAnimation(
                onTap: (){},
                child: Container(
                  width: 170,
                  height: 240,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: ThemeColors.light.black.withOpacity(0.2),
                          blurRadius: 2,
                          offset: const Offset(0, 2)),
                    ],
                    borderRadius: BorderRadius.circular(12),
                    color: ThemeColors.light.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 136,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: NetworkImage(
                                  "https://i.pinimg.com/236x/dd/b2/b6/ddb2b636719b747c52d62c7ee8574fd1.jpg",
                                ),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 6,top: 4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Women Printed Kurta",
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 12),
                            Text(
                              """Neque porro quisquam est qui dolorem ipsum quia""",
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 12),
                            Text(
                              """450 \$""",
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
