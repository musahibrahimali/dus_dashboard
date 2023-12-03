import 'package:dus_dashboard/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductGridView extends StatefulWidget {
  const ProductGridView({
    super.key,
  });

  @override
  State<ProductGridView> createState() => _ProductGridViewState();
}

class _ProductGridViewState extends State<ProductGridView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10.0,
      ),
      child: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraint) {
        return Obx(
          () => GridView.builder(
            itemCount: productsController.filteredProducts.length,
            itemBuilder: (BuildContext context, int index) {
              ProductModel product = productsController.filteredProducts[index];
              return ProductTile(
                product: product,
                showDeleteButton: productsController.showDeleteButton,
                onTap: () {
                  ProductPageRoute(id: product.id).go(context);
                },
              );
            },
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 20.0,
              crossAxisSpacing: 20.0,
              crossAxisCount: constraint.maxWidth > 700 ? 4 : 2,
              childAspectRatio: 1.0,
            ),
          ),
        );
      }),
    );
  }
}
