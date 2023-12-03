import 'package:cached_network_image/cached_network_image.dart';
import 'package:dus_dashboard/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ProductTile extends StatelessWidget {
  final ProductModel product;
  final bool showDeleteButton;
  final VoidCallback? onTap;
  const ProductTile({
    super.key,
    required this.product,
    this.showDeleteButton = false,
    this.onTap,
  });

  /// get the color based on the string
  _getColor(String color) {
    // return colors for the product based on the color string
    switch (color.toLowerCase()) {
      case "red":
        return Colors.red;
      case "blue":
        return Colors.blue;
      case "green":
        return Colors.green;
      case "yellow":
        return Colors.yellow;
      case "orange":
        return Colors.orange;
      case "purple":
        return Colors.purple;
      case "pink":
        return Colors.pink;
      case "cyan":
        return Colors.cyan;
      case "teal":
        return Colors.teal;
      case "amber":
        return Colors.amber;
      case "lime":
        return Colors.lime;
      case "brown":
        return Colors.brown;
      case "grey":
        return Colors.grey;
      case "white":
        return Colors.white;
      case "black":
        return Colors.black;
      default:
        return brandSurface;
    }
  }

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
        colors.add(_getColor(color));
      }
    }

    /// for each item in the sizes of the product print them
    for (var size in product.sizes!) {
      if (!size.contains(",")) {
        sizes.add(size);
      }
    }

    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 6.0,
        shadowColor: brandColors.goldContainer?.withOpacity(0.6),
        color: brandColors.goldContainer,
        child: Stack(
          children: <Widget>[
            /// expanded image
            ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(0),
                topLeft: Radius.circular(0),
                topRight: Radius.circular(0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(0.0),
                child: CachedNetworkImage(
                  // width: 38.0,
                  // height: 38.0,
                  imageUrl: product.images.isNotEmpty ? product.images[0] : "https://www.gravatar.com/avatar/00000000000000000000000000000000?d=mp&f=y",
                  fit: BoxFit.cover,
                  placeholder: (BuildContext context, String url) => Container(
                    // width: 38.0,
                    // height: 38.0,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(Assets.imagesDynastyEngraved),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  errorWidget: (BuildContext context, String url, dynamic dynamic) {
                    return Container(
                      // width: 38.0,
                      // height: 38.0,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(Assets.imagesDynastyEngraved),
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
                    var del = await helperMethods.deleteProduct(id: product.id);
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
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 4, 4, 0),
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
                    color: brandColors.goldContainer,
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
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                            child: Text(
                              product.name,
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ),
                        ],
                      ),

                      const Gap(10.0),

                      /// colors and sizes
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                              child: Wrap(
                                spacing: 5.0,
                                runSpacing: 5.0,
                                children: <Widget>[
                                  for (var color in colors)
                                    Container(
                                      width: 15.0,
                                      height: 15.0,
                                      decoration: BoxDecoration(
                                        color: color,
                                        borderRadius: BorderRadius.circular(5.0),
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
                                children: <Widget>[
                                  for (var size in sizes)
                                    Chip(
                                      label: Text(
                                        size,
                                        style: Theme.of(context).textTheme.bodySmall,
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                      /// price and rating
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                            child: Text(
                              '${product.price.currency} ${product.price.amount}',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ),
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
                        ],
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
