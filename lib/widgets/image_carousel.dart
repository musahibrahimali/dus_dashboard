import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dus_dashboard/index.dart';
import 'package:flutter/material.dart';

class ImageCarousel extends StatefulWidget {
  final double? height;
  final List items;

  const ImageCarousel({
    Key? key,
    this.height,
    required this.items,
  }) : super(key: key);

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: widget.items
          .map(
            (imgPath) => ClipRRect(
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
                  imageUrl: imgPath,
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
          )
          .toList(),
      options: CarouselOptions(
        initialPage: 0,
        autoPlay: true,
        pauseAutoPlayOnTouch: true,
        autoPlayCurve: Curves.fastOutSlowIn,
        viewportFraction: 1.2,
        enableInfiniteScroll: true,
        height: widget.height,
      ),
    );
  }
}
