import 'package:flutter/material.dart';

class SummaryCard extends StatelessWidget {
  final String title;
  final String value;
  final String? toolTipMessage;

  const SummaryCard({
    super.key,
    required this.title,
    required this.value,
    this.toolTipMessage,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SelectionArea(
      child: SizedBox(
        width: double.infinity,
        child: Tooltip(
          message: toolTipMessage ?? title,
          verticalOffset: 48.0,
          preferBelow: false,
          decoration: BoxDecoration(
            color: theme.colorScheme.primary,
            borderRadius: BorderRadius.circular(8.0),
          ),
          padding: const EdgeInsets.all(16.0),
          textStyle: theme.textTheme.bodyMedium!.copyWith(
            color: theme.colorScheme.onPrimary,
          ),
          child: Card(
            shadowColor: Colors.black12,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 16.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    title.toUpperCase(),
                    style: theme.textTheme.titleMedium,
                  ),
                  Text(
                    value,
                    style: theme.textTheme.headlineMedium!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
