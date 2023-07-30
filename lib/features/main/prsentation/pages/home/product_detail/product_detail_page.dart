import 'package:flutter/material.dart';
import 'package:flutter_competition/core/theme/app_text_style.dart';
import 'package:flutter_competition/core/utils/app_utils.dart';
import 'package:flutter_competition/features/main/prsentation/pages/page_arguments/product_pege_arguments.dart';

class ProductDetailPage extends StatelessWidget {
  final ProductPageArguments productInfo;

  const ProductDetailPage({super.key, required this.productInfo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                productInfo.productImageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: AppUtils.kPaddingAll16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productInfo.productName,
                    style: context.textStyle.boldTitle3,
                  ),
                  AppUtils.kBoxHeight16,
                  Text(
                    productInfo.productDescription,
                    style: context.textStyle.regularFootNote,
                  ),
                  AppUtils.kBoxHeight16,
                  Row(
                    children: [
                      Text(
                        'Quantity',
                        style: context.textStyle.boldCallOut,
                      ),
                      AppUtils.kBoxWidth16,
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.remove_circle_outline),
                          ),
                          Text(
                            '1',
                            style: context.textStyle.regularCallOut,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.add_circle_outline),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: AppUtils.kPaddingAll16,
        child: Row(
          children: [
            Expanded(
              child: Text(
                'Total price: ${productInfo.productPrice}\$',
                style: context.textStyle.boldCallOut,
              ),
            ),
            AppUtils.kBoxWidth12,
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Add to Cart'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
