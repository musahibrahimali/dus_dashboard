import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:dus_dashboard/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ProductTile extends StatelessWidget {
  final ProductModel product;
  final bool showDeleteButton;
  final VoidCallback? onTap;
  final VoidCallback? onAddToCart;
  final VoidCallback? onRemoveCart;
  final bool showDetails;
  final bool showControls;
  const ProductTile({
    super.key,
    required this.product,
    this.showDeleteButton = false,
    this.onTap,
    this.showDetails = false,
    this.showControls = false,
    this.onAddToCart,
    this.onRemoveCart,
  });

  @override
  Widget build(BuildContext context) {
    CustomColors brandColors = Theme.of(context).extension<CustomColors>()!;

    /// list of colors for the product
    List<Color> colors = <Color>[];

    /// list of sizes for the product
    List<String> sizes = <String>[];

    /// for each item in the colors of the product print them
    for (var color in product.colors!) {
      if (!color.contains(",")) {
        colors.add(helperFunctions.getColor(color));
      }
    }

    /// for each item in the sizes of the product print them
    for (String size in product.sizes!) {
      if (!size.contains(",")) {
        sizes.add(size);
      }
    }

    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 6.0,
        shadowColor: brandColors.brandSurface?.withOpacity(0.6),
        color: Theme.of(context).colorScheme.background,
        child: Stack(
          children: <Widget>[
            /// expanded image
            ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(0.0),
                bottomRight: Radius.circular(0.0),
                topLeft: Radius.circular(8.0),
                topRight: Radius.circular(8.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(0.0),
                child: CachedNetworkImage(
                  width: double.infinity,
                  // height: 38.0,
                  imageUrl: product.images.isNotEmpty
                      ? product.images[0]
                      : "https://res.cloudinary.com/dynasty-urban-style/image/upload/v1701686619/defaults/placeholder_image_resized_vf7n7a.jpg",
                  fit: BoxFit.cover,
                  placeholder: (BuildContext context, String url) => Container(
                    width: double.infinity,
                    // height: 38.0,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(Assets.imagesProductPlaceholderImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  errorWidget: (BuildContext context, String url, dynamic dynamic) {
                    return Container(
                      width: double.infinity,
                      // height: 38.0,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(Assets.imagesProductPlaceholderImage),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),

            /// delete button
            if (showDeleteButton)
              Positioned(
                top: 0.0,
                right: 0.0,
                child: InkWell(
                  onTap: () async {
                    dartz.Either<Failure, bool> del = await helperMethods.deleteProduct(id: product.id);
                    del.fold(
                      (Failure l) {
                        notificationService.showErrorNotification(
                          context: context,
                          title: "Error",
                          message: l.message.toString(),
                        );
                      },
                      (bool r) {
                        notificationService.showSuccessNotification(
                          context: context,
                          title: "Success",
                          message: "Product deleted successfully",
                        );
                      },
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
                    decoration: BoxDecoration(
                      color: brandColors.goldContainer,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(8),
                      ),
                    ),
                    child: const Icon(
                      LineAwesomeIcons.trash,
                      color: Colors.redAccent,
                      size: 25.0,
                    ),
                  ),
                ),
              ),

            /// details
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 12.0,
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    /// title
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        /// name of product
                        Container(
                          padding: const EdgeInsetsDirectional.fromSTEB(4, 4, 0, 0),
                          child: CustomText(
                            product.name,
                            verticalMargin: 0.0,
                            horizontalMargin: 0.0,
                            maxLines: 4,
                            fontSize: 3.0.sp,
                            fontWeight: FontWeight.w600,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),

                        /// number in stock
                        if (showDetails)
                          Container(
                            padding: const EdgeInsetsDirectional.fromSTEB(4, 4, 0, 0),
                            child: Row(
                              children: <Widget>[
                                const Icon(
                                  LineAwesomeIcons.cubes,
                                  size: 25.0,
                                ),
                                const Gap(5.0),
                                Text(
                                  "${product.numInStock}",
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),

                    const Gap(10.0),

                    /// colors and sizes
                    if (showDetails)
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                              child: Wrap(
                                spacing: 3.0,
                                runSpacing: 3.0,
                                children: <Widget>[
                                  for (var color in colors)
                                    Container(
                                      height: 4.0.w,
                                      width: 4.0.w,
                                      decoration: BoxDecoration(
                                        color: color,
                                        borderRadius: BorderRadius.circular(8.0),
                                        border: Border.all(
                                          color: Colors.grey.shade300,
                                          width: 2.0,
                                        ),
                                        shape: BoxShape.rectangle,
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                              child: Wrap(
                                spacing: 4.0,
                                runSpacing: 4.0,
                                alignment: WrapAlignment.end,
                                children: <Widget>[
                                  for (var size in sizes)
                                    Card(
                                      elevation: 5.0,
                                      color: brandColors.brandSurface,
                                      shadowColor: brandColors.brandSurface?.withOpacity(0.3),
                                      child: Container(
                                        width: 40.0,
                                        height: 40.0,
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
                                            fontSize: 10.0,
                                            color: brandColors.onBrandSurface,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                    const Gap(10.0),

                    /// price and rating
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsetsDirectional.fromSTEB(4, 4, 0, 0),
                          child: CustomText(
                            '${product.price.currency} ${product.price.amount}',
                            verticalMargin: 0.0,
                            horizontalMargin: 0.0,
                            fontSize: 12,
                          ),
                        ),
                        if (showDetails)
                          RatingBar.builder(
                            initialRating: product.rating!.toDouble(),
                            minRating: 0,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemSize: 15.0,
                            itemCount: 5,
                            itemBuilder: (context, _) => Icon(
                              LineAwesomeIcons.star,
                              color: brandColors.onGoldContainer,
                              size: 8.0,
                            ),
                            onRatingUpdate: (rating) {
                              debugPrint(rating.toString());
                            },
                          ),
                        if (showControls)
                          Row(
                            children: [
                              InkWell(
                                onTap: onAddToCart,
                                child: const Icon(LineAwesomeIcons.plus_circle),
                              ),
                              InkWell(
                                onTap: onRemoveCart,
                                child: const Icon(LineAwesomeIcons.minus_circle),
                              ),
                            ],
                          )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
