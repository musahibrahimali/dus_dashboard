import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageHeader extends StatelessWidget {
  final String title;
  final String description;
  final Color? color;

  const PageHeader({
    super.key,
    required this.title,
    required this.description,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 32.0,
            fontWeight: FontWeight.w600,
            color: color ?? theme.colorScheme.onSurface,
          ),
        ),
        Text(
          description,
          style: GoogleFonts.poppins(
            color: color ?? theme.colorScheme.onSurface.withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}
