import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

class ClassCard extends StatelessWidget {
  final String title;
  final String? message;
  final int items;
  final IconData icon;
  final Color? color;
  final Color? borderColor;
  final double? width;
  final double? height;
  final VoidCallback? onTap;

  const ClassCard({
    super.key,
    required this.title,
    required this.items,
    this.icon = LineAwesomeIcons.cubes,
    this.color,
    this.borderColor,
    this.width,
    this.height,
    this.onTap,
    this.message,
  });

  @override
  Widget build(BuildContext context) {
    final ResponsiveBreakpointsData responsive = ResponsiveBreakpoints.of(context);

    return Tooltip(
      message: message ?? "Filter products by $title",
      child: InkWell(
        onTap: onTap,
        child: Card(
          color: color ?? const Color.fromRGBO(207, 221, 219, 1),
          shadowColor: Colors.black12,
          child: Container(
            margin: const EdgeInsets.all(5.0),
            padding: const EdgeInsets.all(10.0),
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            width: width ?? (responsive.isDesktop ? 200 : 140),
            height: height ?? 120,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(icon),
                const Gap(3.0),
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontSize: 25.0,
                  ),
                ),
                const Gap(3.0),
                Text('$items items')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
