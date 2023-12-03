import 'package:dus_dashboard/index.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProductPage extends StatelessWidget {
  final ProductModel product;
  const ProductPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final brandColors = theme.extension<CustomColors>()!;

    return ContentView(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.45,
        padding: const EdgeInsets.symmetric(
          horizontal: 12.0,
        ),
        child: Column(
          children: <Widget>[
            /// image carousel
            Card(
              shadowColor: brandColors.goldContainer?.withOpacity(0.3),
              child: Container(
                height: 400.0,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: ImageCarousel(
                  items: product.images,
                ),
              ),
            ),

            CustomText(
              product.name,
              fontWeight: FontWeight.w700,
              fontSize: 24.0,
            ),
            Text('price: ${product.price.amount}'),
            SelectionArea(
              child: Text('userId: ${product.id}'),
            ),
            const Gap(16),
          ],
        ),
      ),
    );
  }
}
