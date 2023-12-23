import 'package:dus_dashboard/index.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ProductPage extends StatefulWidget {
  final ProductModel product;
  const ProductPage({super.key, required this.product});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  bool _editMode = false;
  @override
  void initState() {
    _editMode = false;
    super.initState();
  }

  @override
  void dispose() {
    _editMode = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final brandColors = theme.extension<CustomColors>()!;

    if (_editMode) {
      return AddProduct(
        isEditing: true,
        product: widget.product,
      );
    }
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _editMode = true;
          });
        },
        child: const Icon(LineAwesomeIcons.pen_fancy),
      ),
      body: ContentView(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.45,
          padding: const EdgeInsets.symmetric(
            horizontal: 12.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              /// image carousel, colors, sizes and price, reviews, stock number
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  /// image carousel
                  Expanded(
                    flex: 4,
                    child: Card(
                      shadowColor: brandColors.goldContainer?.withOpacity(0.3),
                      child: Container(
                        height: 300.0,
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        child: ImageCarousel(
                          items: widget.product.images,
                        ),
                      ),
                    ),
                  ),

                  const Gap(16.0),

                  /// colors, sizes and price
                  Expanded(
                    flex: 3,
                    child: Card(
                      child: Container(
                        height: 300.0,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 20.0,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            /// price
                            CustomText(
                              '${widget.product.price.currency} ${widget.product.price.amount}',
                              fontWeight: FontWeight.w800,
                              fontSize: 24.0,
                              verticalMargin: 0.0,
                            ),
                            const Gap(15.0),

                            /// color row
                            CustomText(
                              "Colors Available".toUpperCase(),
                              fontWeight: FontWeight.w700,
                              verticalMargin: 0.0,
                            ),
                            const Gap(8.0),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  ...?widget.product.colors?.map(
                                    (String color) => Container(
                                      margin: const EdgeInsets.symmetric(
                                        horizontal: 5.0,
                                      ),
                                      height: 30.0,
                                      width: 30.0,
                                      decoration: BoxDecoration(
                                        color: helperFunctions.getColor(color),
                                        borderRadius: BorderRadius.circular(8.0),
                                        border: Border.all(
                                          color: Colors.grey.shade300,
                                          width: 2.0,
                                        ),
                                        shape: BoxShape.rectangle,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            const Gap(20.0),

                            /// sizes row
                            CustomText(
                              "Sizes Available".toUpperCase(),
                              fontWeight: FontWeight.w700,
                            ),
                            const Gap(8.0),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  ...?widget.product.sizes?.map(
                                    (String size) => Card(
                                      elevation: 5.0,
                                      color: brandColors.brandSurface,
                                      shadowColor: brandColors.brandSurface?.withOpacity(0.3),
                                      child: Container(
                                        width: 80.0,
                                        height: 50.0,
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 10.0,
                                          vertical: 5.0,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8.0),
                                          shape: BoxShape.rectangle,
                                        ),
                                        child: Center(
                                          child: CustomText(
                                            size,
                                            fontSize: 16.0,
                                            color: brandColors.onBrandSurface,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Gap(20.0),
                          ],
                        ),
                      ),
                    ),
                  ),

                  const Gap(16.0),

                  /// rating, review stock number
                  Expanded(
                    flex: 2,
                    child: Card(
                      child: Container(
                        height: 300.0,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 20.0,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            /// rating and reviews
                            Row(
                              children: <Widget>[
                                const CustomText(
                                  "Rating: ",
                                  fontWeight: FontWeight.w700,
                                ),
                                CustomText(
                                  "${widget.product.rating}",
                                  fontWeight: FontWeight.w700,
                                ),
                              ],
                            ),
                            const Gap(10.0),

                            /// reviews
                            Row(
                              children: <Widget>[
                                const CustomText(
                                  "Reviews: ",
                                  fontWeight: FontWeight.w700,
                                ),
                                CustomText(
                                  "${widget.product.numReviews}",
                                  fontWeight: FontWeight.w700,
                                ),
                              ],
                            ),

                            const Gap(10.0),

                            /// number in stock
                            Row(
                              children: <Widget>[
                                const CustomText(
                                  "In Stock: ",
                                  fontWeight: FontWeight.w700,
                                ),
                                CustomText(
                                  "${widget.product.numInStock}",
                                  fontWeight: FontWeight.w700,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Gap(16),

              Expanded(
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12.0,
                      vertical: 15.0,
                    ),
                    child: ListView(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            CustomText(
                              widget.product.name,
                              fontWeight: FontWeight.w700,
                              fontSize: 24.0,
                            ),
                            const Gap(8.0),
                            const Divider(),
                            const Gap(8.0),
                            CustomText(
                              widget.product.description,
                              maxLines: 150,
                              fontWeight: FontWeight.normal,
                              fontSize: 18.0,
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
