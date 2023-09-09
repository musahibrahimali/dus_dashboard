import 'package:dus_dashboard/index.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_framework.dart';

class NavigationTitle extends StatelessWidget {
  const NavigationTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    /// SelectionArea disabled
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Visibility(
        visible: ResponsiveBreakpoints.of(context).largerThan(MOBILE),
        child: GestureDetector(
          onTap: () => context.go(routerInitialLocation),
          child: Text(
            AppStrings.appTitle,
            style: theme.textTheme.bodyLarge!.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
