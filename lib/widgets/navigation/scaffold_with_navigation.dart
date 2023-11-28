import 'package:dus_dashboard/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ScaffoldWithNavigation extends StatelessWidget {
  const ScaffoldWithNavigation({
    super.key,
    required this.navigationShell,
  });

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    final breakpoint = ResponsiveBreakpoints.of(context).breakpoint;
    return switch (breakpoint.name) {
      MOBILE || TABLET => _ScaffoldWithDrawer(navigationShell),
      (_) => _ScaffoldWithNavigationRail(navigationShell),
    };
  }
}

/// Scaffold with Navigation Rail for desktop [DESKTOP]
class _ScaffoldWithNavigationRail extends StatelessWidget {
  const _ScaffoldWithNavigationRail(this.navigationShell);

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return GetBuilder<AppController>(builder: (AppController appController) {
      return Scaffold(
        appBar: const NavigationAppBar(),
        body: Row(
          children: <Widget>[
            Column(
              children: <Widget>[
                if (appController.isDrawerExpanded)
                  DrawerHeader(
                    decoration: const BoxDecoration(border: Border()),
                    margin: EdgeInsets.zero,
                    child: Center(
                      child: Text(
                        appStrings.appTitle,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w900,
                          fontSize: 26.0,
                        ),
                      ),
                    ),
                  ),
                Expanded(
                  child: _NavigationRail(
                    navigationShell: navigationShell,
                    expand: appController.isDrawerExpanded,
                  ),
                ),

                /// bottom section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const ThemeModeButton.icon(),
                    IconButton(
                      onPressed: () {
                        appController.updateExpanded(!appController.isDrawerExpanded);
                      },
                      icon: Icon(
                        appController.isDrawerExpanded ? LineAwesomeIcons.angle_double_left : LineAwesomeIcons.angle_double_right,
                      ),
                    )
                  ],
                ),
              ],
            ),
            VerticalDivider(
              thickness: 1,
              width: 1,
              color: colorScheme.primary.withOpacity(0.2),
            ),
            Expanded(child: navigationShell),
          ],
        ),
      );
    });
  }
}

/// Scaffold with Drawer for [MOBILE] and [TABLET]
class _ScaffoldWithDrawer extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  const _ScaffoldWithDrawer(this.navigationShell);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NavigationAppBar(),
      body: navigationShell,
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(border: Border()),
              margin: EdgeInsets.zero,
              child: Center(
                child: Text(
                  appStrings.appTitle,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w900,
                    fontSize: 26.0,
                  ),
                ),
              ),
            ),
            Expanded(
              child: _NavigationRail(
                navigationShell: navigationShell,
                expand: true,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: ThemeModeButton.outlined(),
            ),
          ],
        ),
      ),
    );
  }
}

/// Navigation Rail
class _NavigationRail extends StatelessWidget {
  const _NavigationRail({
    required this.navigationShell,
    required this.expand,
  });

  final StatefulNavigationShell navigationShell;
  final bool expand;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return NavigationRail(
      extended: expand,
      selectedIndex: navigationShell.currentIndex,
      unselectedLabelTextStyle: theme.textTheme.bodyMedium,
      selectedLabelTextStyle: theme.textTheme.bodyMedium!.copyWith(
        fontWeight: FontWeight.bold,
      ),
      onDestinationSelected: (int index) {
        navigationShell.goBranch(
          index,
          initialLocation: index == navigationShell.currentIndex,
        );
      },
      destinations: <NavigationRailDestination>[
        for (final item in NavigationItem.values)
          NavigationRailDestination(
            icon: Icon(item.iconData),
            label: Text(item.label.toUpperCase()),
          ),
      ],
    );
  }
}
