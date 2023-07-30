import 'package:flutter/material.dart';
import 'package:flutter_competition/core/theme/colors/app_colors.dart';
import 'package:flutter_competition/core/utils/app_utils.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Basket"),
        elevation: 0,
        centerTitle: true,
        actions: [
          ZoomTapAnimation(
            child: Icon(
              Icons.delete_outlined,
              color: ThemeColors.light.error,
            ),
            onTap: () {},
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (_, int index) {
                  return Padding(
                    padding: AppUtils.kPaddingAll16,
                    child: Container(
                      width: double.infinity,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: ThemeColors.light.white,
                        boxShadow: [
                          BoxShadow(
                              color: ThemeColors.light.black.withOpacity(0.2),
                              blurRadius: 6,
                              offset: const Offset(0, 1))
                        ],
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: double.infinity,
                            width: 100,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: NetworkImage(
                                      "https://i.pinimg.com/236x/dd/b2/b6/ddb2b636719b747c52d62c7ee8574fd1.jpg",
                                    ),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                              left: 12,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 12),
                                Text("2020 Apple iPad Air 10.9"),
                                SizedBox(height: 12),
                                Text("\$579.00"),
                                SizedBox(height: 12),
                                Row(
                                  children: [
                                    Text("Quantity"),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
