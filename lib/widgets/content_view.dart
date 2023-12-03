import 'package:dus_dashboard/index.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ContentView extends StatelessWidget {
  const ContentView({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final brandColors = theme.extension<CustomColors>()!;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            /// back button
            Positioned(
              top: 0.0,
              right: 0.0,
              left: 0.0,
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: brandColors.brandSurface!.withOpacity(0.2),
                    ),
                  ),
                ),
                child: Row(
                  children: <Widget>[
                    InkWell(
                      child: Container(
                        padding: const EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          color: brandColors.brandSurface,
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(32.0),
                            bottomRight: Radius.circular(32.0),
                          ),
                        ),
                        child: Icon(
                          LineAwesomeIcons.angle_left,
                          color: brandColors.onBrandSurface,
                        ),
                      ),
                      onTap: () {
                        context.pop();
                      },
                    ),
                  ],
                ),
              ),
            ),

            /// child content
            Positioned.fill(
              top: 60.0,
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}
