import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ContentView extends StatelessWidget {
  const ContentView({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: ResponsiveBreakpoints.of(context).isMobile
            ? const EdgeInsets.all(16.0)
            : const EdgeInsets.symmetric(
                horizontal: 32.0,
                vertical: 20.0,
              ),
        child: child,
      ),
    );
  }
}
