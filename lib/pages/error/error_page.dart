import 'dart:math';

import 'package:dus_dashboard/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFFFCC02),
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> with SingleTickerProviderStateMixin {
  final Duration duration = const Duration(milliseconds: 500);
  bool startAnimation = false;
  bool startBroke = false;
  late AnimationController _animationController;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(duration: const Duration(milliseconds: 250), vsync: this)
      ..addListener(() {
        setState(() {});
      });
    Future.delayed(const Duration(milliseconds: 100), () {
      setState(() {
        startAnimation = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 700), () {
      _animationController.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    // print(_animationController.value);
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const ErrorText(),
                SizedBox(
                  width: 641,
                  height: 310,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: <Widget>[
                      /// Shadow
                      AnimatedPositioned(
                        duration: duration,
                        top: 0,
                        left: startAnimation ? 0 : 50,
                        child: AnimatedOpacity(
                          opacity: startAnimation ? 1 : 0.3,
                          duration: duration,
                          child: SvgPicture.asset(Assets.svgGroup64),
                        ),
                      ),

                      /// Cycle
                      AnimatedPositioned(
                        duration: duration,
                        bottom: 0,
                        left: startAnimation ? 130 : 0,
                        child: AnimatedOpacity(
                          duration: duration,
                          opacity: startAnimation ? 1 : 0,
                          child: SizedBox(
                            height: 310,
                            width: 528,
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Positioned(
                                  // duration: Duration(milliseconds: 200),
                                  bottom: 7,
                                  left: 230 + _animationController.value * 90,
                                  child: SvgPicture.asset(
                                    Assets.svgCyclePart2,
                                    height: 142,
                                    width: 142,
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  child: Transform.rotate(
                                    angle: (_animationController.value * 5) * (pi / 180),
                                    child: SvgPicture.asset(
                                      Assets.svgCyclePart1,
                                      height: 287,
                                    ),
                                  ),
                                ),
                                // Bottom Line
                                Positioned(
                                  left: 0,
                                  bottom: 0,
                                  child: SvgPicture.asset(
                                    Assets.svgLine,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ErrorText extends StatelessWidget {
  const ErrorText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SvgPicture.asset(
          Assets.svgErrorText,
          height: 395,
        ),
        const Gap(30.0),
        TextButton(
          style: TextButton.styleFrom(
            // backgroundColor: Colors.transparent,
            // elevation: 0,
            shadowColor: Colors.transparent,
            padding: const EdgeInsets.symmetric(
              horizontal: 50.0,
              vertical: 25.0,
            ),
            shape: const RoundedRectangleBorder(
              side: BorderSide(color: Color(0xFF293047), width: 2),
              borderRadius: BorderRadius.all(Radius.circular(100)),
            ),
          ),
          onPressed: () {
            const DashboardRoute().go(context);
          },
          child: Text(
            "Back To Home".toUpperCase(),
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF293047),
                ),
          ),
        )
      ],
    );
  }
}
