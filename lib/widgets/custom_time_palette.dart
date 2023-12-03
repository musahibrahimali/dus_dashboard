import 'package:flip_panel_plus/flip_panel_plus.dart';
import 'package:flutter/material.dart';

class CustomTimePalette extends StatelessWidget {
  final Color? digitColor;
  final Color? bgColor;
  final double? height;
  final double? radius;
  final double? digitSize;
  final double? gapSpace;
  final DateTime? startTime;
  const CustomTimePalette({
    Key? key,
    this.digitColor,
    this.bgColor,
    this.height,
    this.radius,
    this.gapSpace,
    this.startTime,
    this.digitSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlipClockPlus.simple(
      startTime: startTime ?? DateTime.now(),
      digitColor: digitColor ?? Colors.white,
      backgroundColor: bgColor ?? Colors.grey.shade800,
      digitSize: digitSize ?? 18.0,
      centerGapSpace: gapSpace ?? 0.0,
      height: height ?? 40.0,
      borderRadius: BorderRadius.all(
        Radius.circular(radius ?? 3.0),
      ),
    );
  }
}
